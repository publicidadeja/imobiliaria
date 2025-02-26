<?php

namespace Srapid\RealEstate\Http\Controllers;

use Srapid\Base\Events\BeforeEditContentEvent;
use Srapid\Base\Events\CreatedContentEvent;
use Srapid\Base\Events\DeletedContentEvent;
use Srapid\Base\Events\UpdatedContentEvent;
use Srapid\Base\Forms\FormBuilder;
use Srapid\Base\Http\Controllers\BaseController;
use Srapid\Base\Http\Responses\BaseHttpResponse;
use Srapid\RealEstate\Forms\CrmForm;
use Srapid\RealEstate\Http\Requests\CrmRequest;
use Srapid\RealEstate\Models\Crm;
use Srapid\RealEstate\Tables\CrmTable;
use Exception;
use Illuminate\Http\Request;

class CrmController extends BaseController
{
    /**
     * @param CrmTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(CrmTable $table)
    {
        page_title()->setTitle(trans('plugins/real-estate::crm.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/real-estate::crm.create'));

        return $formBuilder->create(CrmForm::class)->renderForm();
    }

    /**
     * @param CrmRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(CrmRequest $request, BaseHttpResponse $response)
    {
        $crm = new Crm();
        $crm->fill($request->input());
        $crm->save();

        event(new CreatedContentEvent(CRM_MODULE_SCREEN_NAME, $request, $crm));

        return $response
            ->setPreviousUrl(route('real-estate.crm.index'))
            ->setNextUrl(route('real-estate.crm.edit', $crm->id))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    /**
     * @param int $id
     * @param FormBuilder $formBuilder
     * @param Request $request
     * @return string
     */
    public function edit($id, FormBuilder $formBuilder, Request $request)
    {
        $crm = Crm::findOrFail($id);

        event(new BeforeEditContentEvent($request, $crm));

        page_title()->setTitle(trans('plugins/real-estate::crm.edit') . ' "' . $crm->name . '"');

        return $formBuilder->create(CrmForm::class, ['model' => $crm])->renderForm();
    }

    /**
     * @param int $id
     * @param CrmRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, CrmRequest $request, BaseHttpResponse $response)
    {
        $crm = Crm::findOrFail($id);

        $crm->fill($request->input());
        $crm->save();

        event(new UpdatedContentEvent(CRM_MODULE_SCREEN_NAME, $request, $crm));

        return $response
            ->setPreviousUrl(route('real-estate.crm.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function deletes(Request $request)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return response()->json([
                'error' => true,
                'message' => trans('core/base::notices.no_select'),
            ]);
        }

        foreach ($ids as $id) {
            $crm = Crm::findOrFail($id);
            $crm->delete();
            event(new DeletedContentEvent(CRM_MODULE_SCREEN_NAME, $request, $crm));
        }

        return response()->json([
            'error' => false,
            'message' => trans('core/base::notices.delete_success_message'),
        ]);
    }

    /**
     * @param int $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function destroy(Request $request, $id, BaseHttpResponse $response)
    {
        try {
            $crm = Crm::findOrFail($id);

            $crm->delete();

            event(new DeletedContentEvent(CRM_MODULE_SCREEN_NAME, $request, $crm));

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }
}
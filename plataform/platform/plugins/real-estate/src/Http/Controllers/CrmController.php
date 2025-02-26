<?php

namespace Srapid\RealEstate\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Forms\FormBuilder;
use Srapid\Base\Http\Controllers\BaseController; // Alterado para o namespace correto
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\RealEstate\Forms\CrmForm;
use Botble\RealEstate\Http\Requests\CrmRequest;
use Botble\RealEstate\Models\Consult;
use Srapid\RealEstate\Tables\CrmTable;
use Exception;
use Illuminate\Http\Request;

class CrmController extends BaseController
{
    public function index(CrmTable $table)
    {
        page_title()->setTitle(trans('plugins/real-estate::consult.crm'));

        return $table->renderTable();
    }

    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/real-estate::consult.create_crm'));

        return $formBuilder->create(CrmForm::class)->renderForm();
    }

    public function store(CrmRequest $request, BaseHttpResponse $response)
    {
        $consult = new Consult();
        $consult->fill($request->input());
        $consult->save();

        event(new CreatedContentEvent(CONSULT_MODULE_SCREEN_NAME, $request, $consult));

        return $response
            ->setPreviousUrl(route('real-estate.crm.index'))
            ->setNextUrl(route('real-estate.crm.edit', $consult->id))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit($id, FormBuilder $formBuilder, Request $request)
    {
        $consult = Consult::findOrFail($id);

        event(new BeforeEditContentEvent($request, $consult));

        page_title()->setTitle(trans('plugins/real-estate::consult.edit_crm') . ' "' . $consult->name . '"');

        return $formBuilder->create(CrmForm::class, ['model' => $consult])->renderForm();
    }

    public function update($id, CrmRequest $request, BaseHttpResponse $response)
    {
        $consult = Consult::findOrFail($id);

        $consult->fill($request->input());
        $consult->save();

        event(new UpdatedContentEvent(CONSULT_MODULE_SCREEN_NAME, $request, $consult));

        return $response
            ->setPreviousUrl(route('real-estate.crm.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(Request $request, $id, BaseHttpResponse $response)
    {
        try {
            $consult = Consult::findOrFail($id);

            $consult->delete();

            event(new DeletedContentEvent(CONSULT_MODULE_SCREEN_NAME, $request, $consult));

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }
}
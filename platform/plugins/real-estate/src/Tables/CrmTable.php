<?php

namespace Srapid\RealEstate\Tables;

use Srapid\Base\Facades\BaseHelper;
use Srapid\RealEstate\Models\Consult;
use Srapid\RealEstate\Repositories\Interfaces\ConsultInterface;
use Srapid\Table\Abstracts\TableAbstract;
use Html;
use Illuminate\Contracts\Routing\UrlGenerator;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Database\Query\Builder as QueryBuilder;
use Illuminate\Http\JsonResponse;
use Yajra\DataTables\DataTables;

class CrmTable extends TableAbstract
{
    /**
     * @var bool
     */
    protected $hasActions = true;

    /**
     * @var bool
     */
    protected $hasFilter = true;

    /**
     * CrmTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param ConsultInterface $consultRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, ConsultInterface $consultRepository)
    {
        parent::__construct($table, $urlGenerator);

        $this->repository = $consultRepository;
    }

    /**
     * {@inheritDoc}
     */
    public function ajax(): JsonResponse
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('name', function (Consult $item) {
                if (!$this->hasPermission('crm.edit')) {
                    return $item->name;
                }
                return Html::link(route('crm.edit', $item->id), $item->name);
            })
            ->editColumn('checkbox', function (Consult $item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('created_at', function (Consult $item) {
                return BaseHelper::formatDate($item->created_at);
            })
            ->editColumn('status', function (Consult $item) {
                return $item->status->toHtml();
            })
            ->addColumn('operations', function (Consult $item) {
                return $this->getOperations('crm.edit', 'crm.destroy', $item);
            });

        return $this->toJson($data);
    }

    /**
     * {@inheritDoc}
     */
    public function query(): Relation|Builder|QueryBuilder
    {
        $query = $this->repository->getModel()
            ->select([
                'id',
                'name',
                'phone',
                'email',
                'created_at',
                'status',
            ]);

        return $this->applyScopes($query);
    }

    /**
     * {@inheritDoc}
     */
    public function columns(): array
    {
        return [
            'id'         => [
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'name'       => [
                'title' => trans('core/base::tables.name'),
                'class' => 'text-start',
            ],
            'email'      => [
                'title' => trans('plugins/real-estate::consult.email.header'),
                'class' => 'text-start',
            ],
            'phone'      => [
                'title' => trans('plugins/real-estate::consult.phone'),
            ],
            'created_at' => [
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
            ],
            'status'     => [
                'title' => trans('core/base::tables.status'),
                'width' => '100px',
            ],
        ];
    }

    /**
     * {@inheritDoc}
     */
    public function buttons(): array
    {
        return $this->addCreateButton(route('crm.create'), 'crm.create');
    }

    /**
     * {@inheritDoc}
     */
    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('crm.deletes'), 'crm.destroy', parent::bulkActions());
    }

    /**
     * {@inheritDoc}
     */
    public function getBulkChanges(): array
    {
        return [
            'name'       => [
                'title'    => trans('core/base::tables.name'),
                'type'     => 'text',
                'validate' => 'required|max:120',
            ],
            'status'     => [
                'title'    => trans('core/base::tables.status'),
                'type'     => 'select',
                'choices'  => Consult::getStatuses(),
                'validate' => 'required|in:' . implode(',', Consult::getStatuses()),
            ],
            'created_at' => [
                'title' => trans('core/base::tables.created_at'),
                'type'  => 'date',
            ],
        ];
    }
}
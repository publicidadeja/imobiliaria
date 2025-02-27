<?php

namespace Srapid\RealEstate\Tables;

use Auth;
use BaseHelper;
use Srapid\Base\Enums\BaseStatusEnum;
use Srapid\RealEstate\Repositories\Interfaces\CrmInterface;
use Srapid\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\JsonResponse;
use Throwable;
use Yajra\DataTables\DataTables;
use Html;
use Exception;

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
     * @param CrmInterface $crmRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, CrmInterface $crmRepository)
    {
        parent::__construct($table, $urlGenerator);

        $this->repository = $crmRepository;
        
        if (!Auth::user()->hasAnyPermission(['crm.edit', 'crm.destroy'])) {
            $this->hasOperations = false;
            $this->hasActions = false;
        }
    }

    /**
     * Display ajax response.
     *
     * @return JsonResponse
     * @since 2.1
     */
    public function ajax()
    {
        try {
            $data = $this->table
                ->eloquent($this->query())
                ->editColumn('name', function ($item) {
                    if (!Auth::user()->hasPermission('crm.edit')) {
                        return $item->name;
                    }
                    return Html::link(route('crm.edit', $item->id), $item->name);
                })
                ->editColumn('checkbox', function ($item) {
                    return $this->getCheckbox($item->id);
                })
                ->editColumn('content', function ($item) {
                    return \Str::limit($item->content, 70);
                })
                ->editColumn('category', function ($item) {
                    // Formatar a categoria para exibição
                    $categories = [
                        'casa' => 'Casa',
                        'apartamento' => 'Apartamento',
                        'chacara' => 'Chácara',
                        'aluguel' => 'Aluguel',
                        'terreno' => 'Terreno',
                        'lote' => 'Lote',
                        'temporada' => 'Temporada',
                        'outros' => 'Outros'
                    ];
                    
                    return $categories[$item->category] ?? $item->category;
                })
                ->editColumn('lead_color', function ($item) {
                    // Formatar a cor do lead com um badge colorido
                    $colors = [
                        'red' => ['text' => 'Lead Quente', 'color' => '#ff0000'],
                        'blue' => ['text' => 'Lead Frio', 'color' => '#0000ff'],
                        'gray' => ['text' => 'Venda Perdida', 'color' => '#808080']
                    ];
                    
                    if (isset($colors[$item->lead_color])) {
                        $info = $colors[$item->lead_color];
                        return '<span class="badge" style="background-color: ' . $info['color'] . '">' . $info['text'] . '</span>';
                    }
                    
                    return $item->lead_color;
                })
                ->editColumn('created_at', function ($item) {
                    return BaseHelper::formatDate($item->created_at);
                })
                ->addColumn('operations', function ($item) {
                    return $this->getOperations('crm.edit', 'crm.destroy', $item);
                })
                ->rawColumns(['lead_color', 'operations']); // Adicione lead_color aos rawColumns para permitir HTML

            return $this->toJson($data);
        } catch (Exception $exception) {
            \Log::error('CrmTable ajax error: ' . $exception->getMessage() . ' - ' . $exception->getTraceAsString());
            return response()->json([
                'error' => true,
                'message' => $exception->getMessage()
            ], 500);
        }
    }

    /**
     * Get the query object to be processed by table.
     *
     * @return \Illuminate\Database\Query\Builder|Builder
     * @since 2.1
     */
    public function query()
    {
        try {
            $query = $this->repository->getModel()->select([
                're_crm.id',
                're_crm.name',
                're_crm.phone',
                're_crm.email',
                're_crm.content',
                're_crm.category',     // Adicionando o campo categoria
                're_crm.lead_color',   // Adicionando o campo cor do lead
                're_crm.status',
                're_crm.created_at',
            ]);

            return $this->applyScopes($query);
        } catch (Exception $exception) {
            \Log::error('CrmTable query error: ' . $exception->getMessage() . ' - ' . $exception->getTraceAsString());
            throw $exception;
        }
    }

    /**
     * @return array
     * @since 2.1
     */
    public function columns()
    {
        return [
            'id' => [
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'name' => [
                'title' => trans('core/base::tables.name'),
                'class' => 'text-start',
            ],
            'phone' => [
                'title' => trans('plugins/real-estate::crm.phone'),
                'class' => 'text-start',
            ],
            'email' => [
                'title' => trans('plugins/real-estate::crm.email'),
                'class' => 'text-start',
            ],
            'category' => [
                'title' => 'Categoria do Lead',
                'class' => 'text-start',
            ],
            'lead_color' => [
                'title' => 'Status do Lead',
                'class' => 'text-start',
            ],
            'content' => [
                'title' => trans('plugins/real-estate::crm.content'),
                'class' => 'text-start',
            ],
            'created_at' => [
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
            ],
        ];
    }

    /**
     * {@inheritDoc}
     */
    public function buttons()
    {
        return $this->addCreateButton(route('crm.create'), 'crm.create');
    }

    /**
     * @return array
     * @throws Throwable
     */
    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('crm.deletes'), 'crm.destroy', parent::bulkActions());
    }
  
  /**
 * @return array
 */
public function getFilters(): array
{
    return [
        'category' => [
            'title'    => 'Categoria do Lead',
            'type'     => 'select',
            'choices'  => [
                'casa'       => 'Casa',
                'apartamento' => 'Apartamento',
                'chacara'    => 'Chácara',
                'aluguel'    => 'Aluguel',
                'terreno'    => 'Terreno',
                'lote'       => 'Lote',
                'temporada'  => 'Temporada',
                'outros'     => 'Outros'
            ],
        ],
        'lead_color' => [
            'title'    => 'Status do Lead',
            'type'     => 'select',
            'choices'  => [
                'red'    => 'Lead Quente',
                'blue'   => 'Lead Frio',
                'gray'   => 'Venda Perdida'
            ],
        ],
      'property_value' => [
            'title'    => trans('plugins/real-estate::crm.form.property_value'),
            'type'     => 'number',
            'validate' => 'required|numeric',
        ],

    ];
}

    /**
     * @return array
     */
    public function getBulkChanges(): array
    {
        return [
            'name' => [
                'title'    => trans('core/base::tables.name'),
                'type'     => 'text',
                'validate' => 'required|max:120',
            ],
            'content' => [
                'title'    => trans('plugins/real-estate::crm.content'),
                'type'     => 'text',
                'validate' => 'max:255',
            ],
            'category' => [
                'title'    => 'Categoria do Lead',
                'type'     => 'select',
                'choices'  => [
                    'casa'       => 'Casa',
                    'apartamento' => 'Apartamento',
                    'chacara'    => 'Chácara',
                    'aluguel'    => 'Aluguel',
                    'terreno'    => 'Terreno',
                    'lote'       => 'Lote',
                    'temporada'  => 'Temporada',
                    'outros'     => 'Outros'
                ],
            ],
            'lead_color' => [
                'title'    => 'Status do Lead',
                'type'     => 'select',
                'choices'  => [
                    'red'    => 'Lead Quente (Vermelho)',
                    'blue'   => 'Lead Frio (Azul)',
                    'gray'   => 'Venda Perdida (Cinza)'
                ],
            ],
            'created_at' => [
                'title' => trans('core/base::tables.created_at'),
                'type'  => 'date',
            ],
        ];
    }
}
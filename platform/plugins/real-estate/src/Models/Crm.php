<?php

namespace Srapid\RealEstate\Models;

use Srapid\Base\Traits\EnumCastable; // Adicione esta linha
use Srapid\Base\Enums\BaseStatusEnum;
use Srapid\Base\Models\BaseModel;

class Crm extends BaseModel
{
    use EnumCastable; // Adicione esta linha

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 're_crm';

    /**
     * @var array
     */
    protected $fillable = [
    'name',
    'phone',
    'email',
    'content',
    'status',
    'category',  // Novo campo
    'lead_color' // Novo campo
];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];
}
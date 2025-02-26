<?php

namespace Srapid\RealEstate\Models;

use Srapid\Base\Enums\BaseStatusEnum;
use Srapid\Base\Models\BaseModel;

class Crm extends BaseModel
{
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
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];
}
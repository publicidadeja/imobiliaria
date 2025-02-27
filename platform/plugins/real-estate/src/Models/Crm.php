<?php

namespace Srapid\RealEstate\Models;

use Srapid\Base\Traits\EnumCastable;
use Srapid\Base\Enums\BaseStatusEnum;
use Srapid\Base\Models\BaseModel;

class Crm extends BaseModel
{
    use EnumCastable;

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
        'property_value',
        'status',
        'category',
        'lead_color'
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
        'property_value' => 'float',
    ];

    /**
     * Set property_value attribute
     * 
     * @param string|float $value
     * @return void
     */
    public function setPropertyValueAttribute($value)
    {
        if (is_string($value) && !is_numeric($value)) {
            // Remove R$, pontos e espaços, e substitui vírgula por ponto
            $value = str_replace(['R$', '.', ' '], '', $value);
            $value = str_replace(',', '.', $value);
        }
        
        $this->attributes['property_value'] = (float) $value;
    }

    /**
     * Get property_value attribute for form display
     * 
     * @return string
     */
    public function getFormattedPropertyValueAttribute()
    {
        if (!$this->property_value) {
            return null;
        }
        
        return 'R$ ' . number_format($this->property_value, 2, ',', '.');
    }
}
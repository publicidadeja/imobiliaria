<?php

namespace Srapid\RealEstate\Models;

use Srapid\Base\Supports\Avatar;
use Srapid\RealEstate\Enums\ConsultStatusEnum;
use Srapid\Base\Traits\EnumCastable;
use Srapid\Base\Models\BaseModel;
use Exception;
use Illuminate\Contracts\Routing\UrlGenerator;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use RvMedia;

class Consult extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 're_consults';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'phone',
        'content',
        'project_id',
        'property_id',
        'status',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => ConsultStatusEnum::class,
    ];

    /**
     * @return BelongsTo
     */
    public function project(): BelongsTo
    {
        return $this->belongsTo(Project::class);
    }
  
  /**
 * @return array
 */
public static function getStatuses()
{
    return ConsultStatusEnum::labels();
}

    /**
     * @return BelongsTo
     */
    public function property(): BelongsTo
    {
        return $this->belongsTo(Property::class);
    }

    /**
     * @return UrlGenerator|string
     */
    public function getAvatarUrlAttribute()
    {
        try {
            return (new Avatar)->create($this->name)->toBase64();
        } catch (Exception $exception) {
            return RvMedia::getDefaultImage();
        }
    }
}

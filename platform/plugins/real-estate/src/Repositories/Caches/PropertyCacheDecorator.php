<?php

namespace Srapid\RealEstate\Repositories\Caches;

use Srapid\RealEstate\Repositories\Interfaces\PropertyInterface;
use Srapid\Support\Repositories\Caches\CacheAbstractDecorator;

class PropertyCacheDecorator extends CacheAbstractDecorator implements PropertyInterface
{
    /**
     * {@inheritdoc}
     */
    public function getRelatedProperties(int $propertyId, $limit = 4, array $with = [])
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    /**
     * {@inheritdoc}
     */
    public function getProperties($filters = [], $params = [])
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    /**
     * {@inheritdoc}
     */
    public function getProperty(int $propertyId, array $with = [])
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    /**
     * {@inheritDoc}
     */
    public function getPropertiesByConditions(array $condition, $limit, array $with = [])
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}

<?php

namespace Srapid\Base\Forms\Fields;

use Kris\LaravelFormBuilder\Fields\SelectType;

class CustomSelectField extends SelectType
{

    /**
     * {@inheritDoc}
     */
    protected function getTemplate()
    {
        return 'core/base::forms.fields.custom-select';
    }
}

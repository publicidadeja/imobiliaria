<?php

namespace Botble\RealEstate\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class CrmRequest extends Request
{
    public function rules(): array
    {
        return [
            'name'    => 'required|string|max:255',
            'email'   => 'required|string|email|max:255',
            'phone'   => 'required|string|max:20',
            'subject' => 'required|string',
            'content' => 'required|string',
            'status'  => Rule::in(BaseStatusEnum::values()),
        ];
    }
}
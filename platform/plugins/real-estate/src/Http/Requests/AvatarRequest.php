<?php

namespace Srapid\RealEstate\Http\Requests;

use Srapid\Support\Http\Requests\Request;

class AvatarRequest extends Request
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'avatar_file' => 'required|image|mimes:jpg,jpeg,png',
            'avatar_data' => 'required',
        ];
    }
}

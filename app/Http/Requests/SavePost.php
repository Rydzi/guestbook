<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SavePost extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }


    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $rules = [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255',
            'phone_number' => 'required|max:255|regex:/^[+]?[0-9]{10,13}$/',
            'region_id'  => 'required|between:1,8|exists:App\Models\Region,id',
            'message'  => 'required',
        ];

        return $rules;
    }
}

<?php

namespace MYClasses\Http\Requests;

use MYClasses\Providers\ValidatorProvider;

class TestRequest extends ValidatorProvider
{
    public static function validate()
    {
        //static::$input = ['asd' => 'zxc', 'address_prof' => 'asd'];

        static::validates(static::$input);
        return static::$input;
    }

    protected static function rules()
    {
        static::$validation_rules = [
            ['field' => 'email', 'rules' => 'required']
        ];

        if (empty(static::$input['field_two'])) {
            static::$validation_rules[] = ['field' => 'password', 'rules' => 'required'];
        }

        return static::$validation_rules;
    }
}
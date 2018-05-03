<?php

namespace MYClasses\Providers;

abstract class ValidatorProvider
{
    protected static $CI;
    protected static $input;
    protected static $validation_rules = [];

    abstract protected static function rules();

    protected static function initialize()
    {
        static::$CI = &get_instance();
        static::$input = request()->input();
    }

    protected static function validates($request = null)
    {
        static::initialize();
        if (!is_null($request)) static::$input = $request;

        static::$CI->form_validation->set_data(static::$input);
        static::$CI->form_validation->set_rules(static::rules());
        if (!static::$CI->form_validation->run()) response()->error(formatExceptionAsDataArray(static::$CI->form_validation->error_array()), static::$input);
        return static::$input;
    }
}
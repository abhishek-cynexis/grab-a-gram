<?php

namespace MYClasses\Http;

class Request
{
    protected $CI;
    private $requestData;

    public function __construct()
    {
        $data = [];
        $this->CI = &get_instance();
        if ($this->CI->input->server('REQUEST_METHOD') === 'GET') {
            $data = $this->CI->input->get();
        } elseif ($this->CI->input->server('REQUEST_METHOD') === 'POST') {
            $data = $this->CI->input->post();
        }
        $this->requestData = omitNullKeys($data, true);
        $this->CI->requestData = $this->requestData;
    }

    public function setRequestData($requestData)
    {
        unset($this->CI->requestData);
        $this->CI->requestData = $requestData;
    }

    public function input($key = null)
    {
        if (is_string($key)) return (!empty($this->requestData[$key])) ? $this->requestData[$key] : false;
        return !empty($this->requestData) ? $this->requestData : false;
    }

    public function isApp()
    {
        $header = get_instance()->input->request_headers();
        return isset($header['Response-Type']) && $header['Response-Type'] === 'Json';
    }

    public function isWeb()
    {
        return (new \CI_User_agent())->is_browser();
    }

    public function validates(array $rules, $request = null)
    {
        $inputs = self::input();
        if (!is_null($request)) $inputs = $request;

        $this->CI->form_validation->set_data($inputs);
        $this->CI->form_validation->set_rules($rules);
        if (!$this->CI->form_validation->run()) response()->error(formatExceptionAsDataArray($this->CI->form_validation->error_array()), $inputs);
        return $inputs;
    }
}
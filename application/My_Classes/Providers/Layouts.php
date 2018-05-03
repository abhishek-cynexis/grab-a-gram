<?php

namespace MYClasses\Providers;

trait Layouts
{
    private $_title;
    private $_layout;
    private $_layout_folder;
    private $_is_front_layout = 'layout/web';
    private $_is_driver_layout = 'layout/driver';
    private $_is_backend_layout = 'layout/admin';
    private $_is_customer_layout = 'layout/customer';
    private $_is_dispensary_layout = 'layout/dispensary';
    private $_is_advertiser_layout = 'layout/advertiser';

    final public function driverLayout($title = null)
    {
        $this->set_layout('driver');
        if ($title) $this->setTitle($title);
        return $this;
    }

    final public function dispensaryLayout($title = null)
    {
        $this->set_layout('dispensary');
        if ($title) $this->setTitle($title);
        return $this;
    }

    final public function advertiserLayout($title = null)
    {
        $this->set_layout('advertiser');
        if ($title) $this->setTitle($title);
        return $this;
    }

    final public function customerLayout($title = null)
    {
        $this->set_layout('customer');
        if ($title) $this->setTitle($title);
        return $this;
    }

    final public function adminLayout($title = null)
    {
        $this->set_layout('admin');
        if ($title) $this->setTitle($title);
        return $this;
    }

    final public function webLayout($title = null)
    {
        $this->set_layout('web');
        if ($title) $this->setTitle($title);
        return $this;
    }

    final public function content(array $contents)
    {
        $this->CI_GetInstance();
        foreach ($contents as $key => $content) {
            $this->CI->data[$key] = $content;
        }
        return $this;
    }

    final public function setJS($files)
    {
        $this->CI_GetInstance();
        if (!is_array($files) && is_string($files)) $files = [$files];
        foreach ($files as $index => $file) {
            $file = assetUrl($this->_layout_folder . "/js/" . $file);
            $this->CI->java_script[] = "<script type=\"text/javascript\" src=\"$file\"></script>";
        }
        return $this;
    }

    final public function setCSS($files)
    {
        $this->CI_GetInstance();
        if (!is_array($files) && is_string($files)) $files = [$files];
        foreach ($files as $index => $file) {
            $file = assetUrl($this->_layout_folder . "/css/" . $file);
            $this->CI->style_sheet[] = "<link rel=\"stylesheet\" type=\"text/css\" href=\"$file\">";
        }
        return $this;
    }

    final public function setMeta(array $data)
    {
        $this->CI_GetInstance();
        foreach ($data as $index => $item) {
            $this->CI->meta_data[] = "<meta name=\"$index\" content=\"$item\">";
        }
        return $this;
    }

    final public function publish($page)
    {
        $this->CI_GetInstance();
        $this->CI->data['current_user'] = getCurrentUser();
        $this->CI->data['title'] = (!empty($this->_title)) ? $this->_title : variableToStr($page);
        $pageLoad = $this->CI->load->view('layout/' . $this->_layout_folder . '/pages/' . $page, $this->CI->data, true);
        $this->loadView($pageLoad);
    }

    private function loadView($content)
    {
        $this->CI_GetInstance();
        $view_data = ['content' => $content];
        $this->CI->load->view($this->_layout . '/layout.php', $view_data);
    }

    private function setTitle($title)
    {
        $this->_title = $title;
    }

    private function set_layout($layout)
    {
        $this->_layout_folder = $layout;
        if (strtolower($layout) === 'web') $layout = $this->_is_front_layout;
        if (strtolower($layout) === 'admin') $layout = $this->_is_backend_layout;
        if (strtolower($layout) === 'driver') $layout = $this->_is_driver_layout;
        if (strtolower($layout) === 'customer') $layout = $this->_is_customer_layout;
        if (strtolower($layout) === 'dispensary') $layout = $this->_is_dispensary_layout;
        if (strtolower($layout) === 'advertiser') $layout = $this->_is_advertiser_layout;
        $this->_layout = $layout;
    }
}
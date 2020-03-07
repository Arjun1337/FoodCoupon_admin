<?php


class LanguageLoader
{
    function initialize() {
        $ci =& get_instance();
        $ci->load->helper('language');
        $siteLang = $ci->session->userdata('site_lang');
        if ($siteLang) {
            $ci->lang->load('login',$siteLang);
            $ci->lang->load('header',$siteLang);
            $ci->lang->load('profile',$siteLang);
            $ci->lang->load('billing',$siteLang);
        } else {
            $ci->lang->load('login','english');
            $ci->lang->load('header','english');
            $ci->lang->load('profile','english');
            $ci->lang->load('billing','english');
        }
    }
}
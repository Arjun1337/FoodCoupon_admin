<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'index';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

/*
 * User Controllers Routes
 */

//User Login.
$route['login'] = 'user/login';
$route['login/switchLang/(:any)'] = 'user/login/switchLang/$1';
$route['login/register'] = 'user/login/register';

$route['user_con'] = 'user_con/index';
$route['restaurant_con'] = 'restaurant_con/index';
$route['food_con'] = 'food_con/index';
$route['coupon_con'] = 'coupon_con/index';
$route['chistory_con'] = 'chistory_con/index';
$route['admob_con'] = 'admob_con/index';
$route['special_con'] = 'special_con/index';
$route['notification_con'] = 'notification_con/index';

//Home
$route['home'] = 'user/home';
$route['home/logout'] = 'user/home/logout';
$route['home/history'] = 'user/home/history';
$route['home/switchLang/(:any)'] = 'user/home/switchLang/$1';

//Billing
$route['billing/membership'] = 'user/billing/membership';
$route['billing/payment'] = 'user/billing/payment';

//Profile
$route['profile'] = 'user/profile';
$route['profile/update'] = 'user/profile/update';
$route['profile/password_update'] = 'user/profile/password_update';
$route['profile/image_upload'] = 'user/profile/image_upload';






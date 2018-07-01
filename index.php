<?php
require_once 'vendor/autoload.php';

ini_set('date.timezone', 'Asia/Tokyo');
define('MY_TITLE', 'TEST');

$smarty = new Smarty();

// 使うテンプレートが入っているディレクトリを指定
$smarty->setTemplateDir('./templates/');

$smarty->assign('hello', 'Hello, Smarty!!');
$smarty->assign('today', new DateTime());
$smarty->assign('animal', array('rabbit','cat','dog'));

$smarty->display('index.tpl');

<?php
ini_set('yaf.name_suffix', 0);
ini_set('yaf.name_separator', '_');
ini_set( "memory_limit", "500M" );
define("BASE_PATH",  __DIR__ );
define("APP_PATH",  BASE_PATH."/../application");
$app  = new Yaf\Application(APP_PATH."/conf/config.ini");
$app->bootstrap()->run();

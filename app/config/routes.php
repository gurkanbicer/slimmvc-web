<?php

use SlimFacades\Route;

Route::get('/', '\homeController:index')
     ->setName('indexPage');

Route::get('/index', '\homeController:index')
     ->setName('indexPage');

Route::get('/docs', '\userGuideController:index')
     ->setName('userGuideIndexPage');

Route::get('/docs/{category}/{name}', '\userGuideController:single')
     ->setName('userGuideSinglePage');

Route::get('/support', '\homeController:support')
     ->setName('supportPage');

Route::get('/download', '\homeController:download')
     ->setName('downloadPage');

Route::get('/download-docs', '\homeController:downloadDocs')
    ->setName('downloadDocsPage');

/* path: ~app/config/routes.php */
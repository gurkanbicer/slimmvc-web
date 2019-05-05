{if $routingName == "indexPage"}
  {$pageTitle="SlimMVC - MVC structure for Slim Framework"}
  {$pageDescription="It's provides an MVC structure for SlimPHP (Slim Framework). You can build scaleable projects with SlimMVC."}
{elseif $routingName == "userGuideIndexPage"}
  {$pageTitle="Documentation | SlimMVC"}
  {$pageDescription="An user guide for SlimMVC. You can learn everythings about the SlimMVC in this documentation."}
{elseif $routingName == "userGuideSinglePage"}
  {assign var="guideTitle" value=$guideInfo['guideTitle']}
  {$pageTitle="$guideTitle - Documentation | SlimMVC"}
  {$pageDescription="About $guideTitle on SlimMVC documentation."}
{/if}
<!DOCTYPE html>
<html lang="en-US">
  <head>
    <title>{$pageTitle}</title>
    <!-- META -->
    <meta charset="utf-8">
    <meta name="description" content="{$pageDescription}">
    <meta name="keywords" content="slimmvc, slim mvc, slimphp, slim framework, php framework, framework, mvc">
    <meta name="robots" content="index,follow">
    <!-- CSS -->
    <link rel="stylesheet" href="/public/assets/v1/css/style.css">
  </head>
  <body>
    <!-- #navbar -->
    <nav id="navbar" class="navbar navbar-expand-lg navbar-light bg-light border-bottom shadow-sm sticky-top">
      <a id="brand" class="navbar-brand" href="{path_for name='indexPage'}" title="SlimMVC">Slim<strong>MVC</strong></a>
      <button id="collapser" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="{path_for name='userGuideIndexPage'}">Documentation</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{path_for name='supportPage'}" target="_blank" rel="nofollow">Support</a>
          </li>
        </ul>
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="btn btn-outline-success btn-sm mr-2" href="{path_for name='downloadPage'}" target="_blank" rel="nofollow"><i class="fas fa-cloud-download-alt"></i> Download</a>
          <li class="nav-item">
            <a class="btn btn-outline-dark btn-sm mr-2" href="https://github.com/gurkanbicer/slimmvc" target="_blank" rel="nofollow"><i class="fab fa-github"></i> Github</a>
          </li>
          <li class="nav-item">
            <a class="btn btn-outline-secondary btn-sm mr-2" href="#">Go to <i class="fas fa-arrow-circle-up"></i></a>
          </li>
        </ul>
      </div>
    </nav>

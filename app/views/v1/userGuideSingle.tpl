{include file="v1/header.tpl"}
    <!-- #content -->
    <div id="content" class="container">
      <div id="userguide" class="row pt-5 pb-5">

        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
          <h1 class="text-center">SlimMVC</h1>
          <p class="lead text-center mt-1 mb-5">Documentation</p>
        </div>

        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
          {include file="v1/sidebar.tpl"}
        </div>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
          <h3 class="text-left mt-0 px-0" id="cat-{$guideInfo['categoryName']}">{$guideInfo['categoryTitle']}</h3>
          <h4 class="text-left text-secondary mb-4 px-0" id="guide-{$guideInfo['guideName']}">{$guideInfo['guideTitle']}</h4>
          {$guide}
        </div>
      </div>
    </div>
{include file="v1/footer.tpl"}

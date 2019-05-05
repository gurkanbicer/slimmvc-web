{include file="v1/header.tpl"}
    <!-- #content -->
    <div id="content" class="container">
      <div id="userguide" class="row pt-5 pb-5">

        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
          <h1 class="text-center">SlimMVC</h1>
          <p class="lead text-center mt-1 mb-5">Documentation</p>
        </div>

        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-4">
              <p class="text-muted">
                There are just English documents. We are looking help for translating to other languages and improving currently published English documents. If you want to help us, please write an email to the <strong>owner of the repository</strong> at <strong>GitHub</strong>.
              </p>
              <p>
                You can inspect to user guide before the start. Or, if you want to you can explore by yourself!
              </p>
            </div>
          </div>
          <div class="row">
            {foreach $guides as $guide}
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 mb-5">
              <div class="card shadow-sm">
                <img src="public/assets/v1/img/{$guide['categoryName']}.svg" class="card-img-top" alt="{$guide['categoryTitle']}">
                <div class="card-body text-center">
                  <h5 class="card-title text-center">{$guide['categoryTitle']}</h5>
                  <p class="card-text text-center">{$guide['categoryDescription']}</p>
                  {foreach $guide['guides'] as $guideSingle}
                  <a href="{path_for name='userGuideSinglePage' data=['category' => $guide['categoryName'], 'name' => $guideSingle['guideName']]}" class="card-link">Take me there &rsaquo;</a>{break}
                  {/foreach}
                </div>
              </div>
            </div>
            {/foreach}
          </div>

          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
              <div class="alert alert-primary" role="alert">
                Also, you can download an offline copy of documents via <a href="{path_for name='downloadDocsPage'}" target="_blank" rel="nofollow">this link</a>.
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-4">
              <p><strong>Related documents:</strong></p>
              <ul>
                <li>Slim Framework: <a href="https://www.slimframework.com/docs/" target="_blank">v3</a></li>
                <li>Laravel: <a href="https://laravel.com/docs/5.7/queries" target="_blank">Query Builder</a></li>
                <li>Laravel: <a href="https://laravel.com/docs/5.7/migrations" target="_blank">Migrations</a></li>
                <li>Smarty: <a href="https://www.smarty.net/docs/en/" target="_blank">v3</a></li>
              </ul>
            </div>
          </div>
        </div>

      </div>
    </div>
{include file="v1/footer.tpl"}

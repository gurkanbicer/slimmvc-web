<div class="card mt-0 mx-0 mb-5 p-0 shadow rounded-0">
  {foreach $guides as $guide}
    <div class="card-body px-3 py-2">
      <h4 class="card-title collapser my-1" id="{$guide['categoryName']}" data-toggle="collapse" href="#list{$guide['categoryName']}" role="button" aria-expanded="false" aria-controls="list{$guide['categoryName']}" title="click to expand">{$guide['categoryTitle']}</h4>
    </div>
    <ul class="list-group list-group-flush collapse {if $guide['categoryName'] == {$guideInfo['categoryName']}}show{/if}" id="list{$guide['categoryName']}">
      {foreach $guide['guides'] as $guideSingle}
        <li class="list-group-item py-2 px-3"><a href="{path_for name='userGuideSinglePage' data=['category' => $guide['categoryName'], 'name' => $guideSingle['guideName']]}" class="card-link">{$guideSingle['guideTitle']}</a></li>
      {/foreach}
    </ul>
  {/foreach}
</div>

<section class="app-content">
    <div class="row">
        <div class="col-md-12">
            <div class="container-fluid">
                <div class="panel panel-default">
                    <div class="panel-heading bg-white">
                        <h4 class="panel-title pull-left">{$displayTitle}</h4>
                        </br>
                    </div>
                    <div class="panel-body">
                        <form role="form" method="post" action="{routePath('knowledgebase-search')}">
                            <div class="input-group input-group-lg kb-search">
                                <input type="text"  id="inputKnowledgebaseSearch" name="search" class="form-control" placeholder="{$LANG.kbquestionsearchere}" value="{$searchterm}" />
                                <span class="input-group-btn">
                                    <input type="submit" id="btnKnowledgebaseSearch" class="btn btn-primary btn-input-padded-responsive" value="{$LANG.search}" />
                                </span>
                            </div>
                        </form>
                        <hr>


                        {if $kbcats}
                            <h2 class="text-center">{$LANG.knowledgebasecategories}</h2>
                            <br>

                            <div class="row kbcategories">
                                {foreach name=kbasecats from=$kbcats item=kbcat}
                                    <div class="col-sm-4">
                                        <a class="btn btn-primary btn-lg" href="{routePath('knowledgebase-category-view',{$kbcat.id},{$kbcat.urlfriendlyname})}">
                                            <span class="glyphicon glyphicon-folder-close"></span> {$kbcat.name} <span class="badge badge-info">{$kbcat.numarticles}</span>
                                        </a>
                                        <p>{$kbcat.description}</p>
                                    </div>
                                {/foreach}
                            </div>
                            <hr>
                        {/if}

                        {if $kbarticles || !$kbcats}
                            {if $tag}
                                <h2 class="text-center">{$LANG.kbviewingarticlestagged} '{$tag}'</h2>
                            {else}
                                <h2 class="text-center">{$LANG.knowledgebasearticles}</h2>
                            {/if}
                            <br>
                            <div class="kbarticles">
                                <div class="row">
                                {foreach from=$kbarticles item=kbarticle}
                                    <div class="col-md-4">
                                        <a href="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <span class="title">{$kbarticle.title}</span>
                                                </div>
                                                <div class="panel-body">
                                                    <p>{$kbarticle.article|truncate:100:"..."}</p>
                                                </div>
                                            </div>
                                        </a> 
                                    </div>
                                {foreachelse}
                                </div>
                                    {include file="$template/includes/alert.tpl" type="info" msg=$LANG.knowledgebasenoarticles textcenter=true}
                                <div>
                                {/foreach}
                                </div>
                            </div>
                        {/if}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


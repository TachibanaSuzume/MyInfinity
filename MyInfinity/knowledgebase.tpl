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
                        <p class="lead">
                            {$LANG.knowledgebaseintrotext}
                        </p>
                        <br>
                        <form role="form" method="post" action="{routePath('knowledgebase-search')}">
                            <div class="input-group input-group-lg kb-search">
                                <input type="text" id="inputKnowledgebaseSearch" name="search" class="form-control" placeholder="{$LANG.kbquestionsearchere}" />
                                <span class="input-group-btn">
                                    <input type="submit" id="btnKnowledgebaseSearch" class="btn btn-primary btn-input-padded-responsive" value="{$LANG.search}" />
                                </span>
                            </div>
                        </form>

                        <div class="row">
                            <div class="col-sm-12 text-center">
                                <h2>{$LANG.knowledgebasecategories}</h2>
                            </div>
                        </div>

                        <hr>

                        {if $kbcats}
                        <div class="row">
                            {foreach from=$kbcats name=kbcats item=kbcat}
                            <div class="col-sm-4">
                                <div class="panel panel-default">
                                    <div class="panel-heading"> 
                                        <h4 class="panel-title"><i class="fa fa-book"></i> {$kbcat.name}</h4>
                                    </div>
                                    <div class="panel-body">
                                        <p>{if $kbcat.description}{$kbcat.description}{else}.....{/if}</p>
                                        <br>
                                        <a class="btn rounded mw-md btn-primary" href="{routePath('knowledgebase-category-view', {$kbcat.id}, {$kbcat.urlfriendlyname})}">
                                            {$LANG.readmore}
                                        </a>
                                    </div>
                                </div>
                            </div>
                            {/foreach}
                        </div>
                        {else}
                            {include file="$template/includes/alert.tpl" type="info" msg=$LANG.knowledgebasenoarticles textcenter=true}
                        {/if}

                        <hr>
                        {if $kbmostviews}
                        <div >
                            <h2 class="text-center">{$LANG.knowledgebasepopular}</h2>
                            <br>
                            <div class="row">
                                {foreach from=$kbmostviews item=kbarticle}
                                    <div class="col-sm-4">
                                        <a href="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title"><i class="fa fa-book"></i> {$kbarticle.title}</h4>
                                                </div>
                                                <div class="panel-body">
                                                    <p>{$kbarticle.article|truncate:100:"..."}</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        </div>
                        {/if}

                        <br>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

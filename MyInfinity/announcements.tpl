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
                        {if $announcementsFbRecommend}
                            <script>
                                (function(d, s, id) {
                                    var js, fjs = d.getElementsByTagName(s)[0];
                                    if (d.getElementById(id)) {
                                        return;
                                    }
                                    js = d.createElement(s); js.id = id;
                                    js.src = "//connect.facebook.net/{$LANG.locale}/all.js#xfbml=1";
                                    fjs.parentNode.insertBefore(js, fjs);
                                }(document, 'script', 'facebook-jssdk'));
                            </script>
                        {/if}
                        {foreach from=$announcements item=announcement}

                            <div class="announcement-single">

                                <div class="article-items">
                                    <i class="fa fa-calendar"></i> {"jS M Y"|date:$announcement.timestamp}
                                </div>

                                <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" class="title">
                                    {$announcement.title}
                                </a>

                                {if $announcement.text|strip_tags|strlen < 350}
                                    <p>{$announcement.text}</p>
                                {else}
                                    <p>{$announcement.summary}
                                    </p>
                                    <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" class="btn btn-primary btn-lg">{$LANG.readmore} &raquo;</a>
                                {/if}


                                {if $announcementsFbRecommend}
                                    <div class="fb-like hidden-sm hidden-xs" data-layout="standard" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
                                    <div class="fb-like hidden-lg hidden-md" data-layout="button_count" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
                                {/if}

                            </div>
                            <hr></hr>

                        {foreachelse}

                            {include file="$template/includes/alert.tpl" type="info" msg="{$LANG.noannouncements}" textcenter=true}

                        {/foreach}

                        {if $prevpage || $nextpage}

                            <div class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
                                <form class="form-inline" role="form">
                                    <div class="form-group">
                                        <div class="input-group">
                                            {if $prevpage}
                                                <span class="input-group-btn">
                                                    <a href="{routePath('announcement-index-paged', $prevpage, $view)}" class="btn btn-default">&laquo; {$LANG.previouspage}</a>
                                                </span>
                                            {/if}
                                            <input class="form-control" style="text-align: center;" value="{$LANG.page} {$pagenumber}" disabled="disabled">
                                            {if $nextpage}
                                                <span class="input-group-btn">
                                                    <a href="{routePath('announcement-index-paged', $nextpage, $view)}" class="btn btn-primary">{$LANG.nextpage} &raquo;</a>
                                                </span>
                                            {/if}
                                        </div>
                                    </div>
                                </form>
                            </div>
                        {/if}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
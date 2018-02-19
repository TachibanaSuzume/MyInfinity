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

                        {$text}

                        <br />

                        <div class="pull-left">
                            <strong><i class="fa fa-calendar"></i> {"jS M Y"|date:$timestamp}</strong>
                        </div>
                        <br>
                        <br>

                        {if $twittertweet}
                            <div class="pull-right">
                                <a href="https://twitter.com/share" class="twitter-share-button" data-count="vertical" data-via="{$twitterusername}">Tweet</a><script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
                            </div>
                        {/if}
                        
                        {if $googleplus1}
                            <br />
                            <br />
                            <g:plusone annotation="inline"></g:plusone>
                            {literal}<script type="text/javascript">
                            (function() {
                                var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
                                po.src = 'https://apis.google.com/js/plusone.js';
                                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
                            })();
                            </script>{/literal}
                        {/if}

                        {if $facebookrecommend}
                            <br />
                            <br />
                            {literal}
                            <div id="fb-root">
                            </div>
                            <script>(function(d, s, id) {
                                var js, fjs = d.getElementsByTagName(s)[0];
                                if (d.getElementById(id)) {return;}
                                js = d.createElement(s); js.id = id;
                                js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                                fjs.parentNode.insertBefore(js, fjs);
                                }(document, 'script', 'facebook-jssdk'));</script>
                            {/literal}
                            <div class="fb-like" data-href="{fqdnRoutePath('announcement-view', $id, $urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend">
                            </div>
                        {/if}

                        {if $facebookcomments}
                            <br />
                            <br />
                            {literal}
                            <div id="fb-root">
                            </div>
                            <script>(function(d, s, id) {
                                var js, fjs = d.getElementsByTagName(s)[0];
                                if (d.getElementById(id)) {return;}
                                js = d.createElement(s); js.id = id;
                                js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                                fjs.parentNode.insertBefore(js, fjs);
                                }(document, 'script', 'facebook-jssdk'));</script>
                            {/literal}
                            <fb:comments href="{fqdnRoutePath('announcement-view', $id, $urlfriendlytitle)}" num_posts="5" width="500"></fb:comments>
                        {/if}

                        <p>
                            <a href="{routePath('announcement-index')}" class="btn btn-default">{$LANG.clientareabacklink}</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
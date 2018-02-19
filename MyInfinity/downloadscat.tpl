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
                            {$LANG.downloadsintrotext}
                        </p>
                        <br>
    					<form role="form" method="post" action="{routePath('download-search')}">
    				        <div class="input-group input-group-lg kb-search margin-bottom">
    				            <input type="text" name="search" id="inputDownloadsSearch" class="form-control" placeholder="{$LANG.downloadssearch}" />
    				            <span class="input-group-btn">
    				                <input type="submit" id="btnDownloadsSearch" class="btn btn-primary btn-input-padded-responsive" value="{$LANG.search}" />
    				            </span>
    				        </div>
    				    </form>

                        {if $dlcats}
                            <h2 class="text-center">{$LANG.downloadscategories}</h2>
                            <br>
                            <div class="row">
                            {foreach $dlcats as $dlcat}
                                <div class="col-sm-3">
                                    <a class="block" href="{routePath('download-by-cat', $dlcat.id, $dlcat.urlfriendlyname)}">
                                        <div class="feature boxed boxed--border border--round text-center">
                                            <i class="icon--lg s7-cloud-download"></i>
                                            <span class="h5 color--primary">{$dlcat.name}</span>
                                        </div>
                                    </a>
                                </div>
                            {foreachelse}
                                <div class="col-sm-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading"> 
                                            <h4 class="panel-title">{$LANG.downloadsnone}</h4>
                                        </div>
                                    </div>
                                </div>
                            {/foreach}
                            </div>
                            <hr>
                        {/if}
                        <h2 class="text-center">{$LANG.downloadsfiles}</h2>
                        <br>
                        <div class="row">
                        {foreach $downloads as $download}
                            <div class="col-sm-4">
                                <div class="panel panel-default">
                                    <div class="panel-heading"> 
                                        <p>{if $download.clientsonly}
                                        <i class="fa fa-lock text-muted"></i>
                                        {/if} {$download.title}</p>
                                    </div>
                                    <div class="panel-body">
                                        <p>{$download.description}</p>
                                        <small>{$LANG.downloadsfilesize}: {$download.filesize}</small>
                                        <hr>
                                        <a class="btn mw-md btn-info" href="{$download.link}">{$LANG.downloadname}</a>
                                    </div>
                                </div>
                            </div>
                        {foreachelse}
                            <span class="list-group-item text-center">
                                {$LANG.downloadsnone}
                            </span>
                        {/foreach}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

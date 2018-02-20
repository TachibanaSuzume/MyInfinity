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
                        <div class="alert alert-success text-center">
                            <strong>
                                {$LANG.supportticketsticketcreated}
                                <a id="ticket-number" href="viewticket.php?tid={$tid}&amp;c={$c}" class="alert-link">#{$tid}</a>
                            </strong>
                        </div>

                        <p>{$LANG.supportticketsticketcreateddesc}</p>

                        <hr>
                        
                        <p class="text-center">
                            <a href="viewticket.php?tid={$tid}&amp;c={$c}" class="btn btn-default">
                                {$LANG.continue}
                                <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

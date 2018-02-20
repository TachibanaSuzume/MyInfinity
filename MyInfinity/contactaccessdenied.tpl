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
                        <p>{$LANG.subaccountpermissiondenied}</p>
                        {if !empty($allowedpermissions)}
                            <p>{$LANG.subaccountallowedperms}</p>
                            <br>
                            <div class="row">
                                <div class="col-sm-12">
                                    {foreach from=$allowedpermissions item=permission}
                                        <div class="col-sm-6">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">{$permission}</h4>
                                                </div>
                                            </div>
                                        </div>
                                    {/foreach}
                                </div>
                            </div>
                        {/if}
                        <p>{$LANG.subaccountcontactmaster}</p>
                        <br>
                        <div class="buttons">
                            <a href="javascript:history.go(-1)" class="btn btn-primary btn-lg">
                                <i class="fa fa-arrow-circle-left"></i>
                                {$LANG.goback}
                            </a>
                            <a href="index.php" class="btn btn-default btn-lg pull-right">
                                <i class="fa fa-home"></i>
                                {$LANG.returnhome}
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
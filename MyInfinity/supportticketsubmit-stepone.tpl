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
                        <p>{$LANG.supportticketsheader}</p>
                        <hr>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    {foreach from=$departments key=num item=department}
                                        <div class="col-md-6">
                                            <a href="{$smarty.server.PHP_SELF}?step=2&amp;deptid={$department.id}">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title"><i class="fa fa-envelope"></i> {$department.name}</h4>
                                                    </div>
                                                    <div class="panel-body">
                                                        {if $department.description}
                                                            <p>{$department.description}</p>
                                                        {/if}
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    {foreachelse}
                                        {include file="$template/includes/alert.tpl" type="info" msg=$LANG.nosupportdepartments textcenter=true}
                                    {/foreach}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


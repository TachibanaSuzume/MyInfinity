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
                        {if $stillopen}
                            {include file="$template/includes/alert.tpl" type="warning" msg=$LANG.feedbackclosed textcenter=true}

                            <p class="text-center">
                                <a href="clientarea.php" class="btn btn-primary">{$LANG.returnclient}</a>
                            </p>
                        {elseif $feedbackdone}
                            {include file="$template/includes/alert.tpl" type="success" msg=$LANG.feedbackprovided textcenter=true}

                            <p class="text-center">{$LANG.feedbackthankyou}</p>
                            <hr>
                            <p class="text-center">
                                <a href="clientarea.php" class="btn btn-primary">{$LANG.returnclient}</a>
                            </p>
                        {elseif $success}
                            {include file="$template/includes/alert.tpl" type="success" msg=$LANG.feedbackreceived textcenter=true}

                            <p class="text-center">{$LANG.feedbackthankyou}</p>
                            <hr>

                            <p class="text-center">
                                <a href="clientarea.php" class="btn btn-primary">{$LANG.returnclient}</a>
                            </p>
                        {else}

                            {if $errormessage}
                                {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
                            {/if}

                            <p>{$LANG.feedbackdesc}</p>

                            <br>

                            <table class="table table-striped">
                                <tr>
                                    <td>{$LANG.feedbackopenedat}:</td>
                                    <td><strong>{$opened}</strong></td>
                                </tr>
                                <tr>
                                    <td>{$LANG.feedbacklastreplied}:</td>
                                    <td><strong>{$lastreply}</strong></td>
                                </tr>
                                <tr>
                                    <td>{$LANG.feedbackstaffinvolved}:</td>
                                    <td><strong>{if $staffinvolvedtext}{$staffinvolvedtext}{else}{$LANG.none}{/if}</strong></td>
                                </tr>
                                <tr>
                                    <td>{$LANG.feedbacktotalduration}:</td>
                                    <td><strong>{$duration}</strong></td>
                                </tr>
                            </table>

                            <br>
                            <p class="text-center"><a href="viewticket.php?tid={$tid}&amp;c={$c}" class="btn btn-success">{$LANG.feedbackclickreview}&nbsp; <i class="fa fa-arrow-right">&nbsp;</i></a></p>

                            <hr>

                            <form method="post" action="{$smarty.server.PHP_SELF}?tid={$tid}&c={$c}&feedback=1">
                                <input type="hidden" name="validate" value="true" />
                                    <p>{$LANG.feedbackpleaserate1} </p>

                                {foreach from=$staffinvolved key=staffid item=staff}

                                        <p><strong>{$staff}</strong> {$LANG.feedbackhandled}:</p>

                                    <table class="table text-center">
                                        <thead>
                                            <tr>
                                                <td>{$LANG.feedbackworst}</td>
                                                <td>1</td>
                                                <td>2</td>
                                                <td>3</td>
                                                <td>4</td>
                                                <td>5</td>
                                                <td>6</td>
                                                <td>7</td>
                                                <td>8</td>
                                                <td>9</td>
                                                <td>10</td>
                                                <td>{$LANG.feedbackbest}</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>&nbsp;</td>
                                                {foreach from=$ratings item=rating}
                                                <td><input type="radio" name="rate[{$staffid}]" value="{$rating}"{if $rate.$staffid eq $rating} checked{/if} /></td>
                                                {/foreach}
                                                <td>&nbsp;</td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <p>{$LANG.feedbackpleasecomment1} <strong>{$staff}</strong> {$LANG.feedbackhandled}.</p>

                                    <textarea name="comments[{$staffid}]" rows="4" class="form-control">{$comments.$staffid}</textarea>

                                {/foreach}

                                {if $staffinvolved}<hr>{/if} 

                                <p>{$LANG.feedbackimprove}</p>

                                <textarea name="comments[generic]" rows="4" class="form-control">{$comments.generic}</textarea>
                                

                                <br />

                                <div class="form-group text-center">
                                    <input class="btn btn-primary" type="submit" name="save" value="{$LANG.clientareasavechanges}" />
                                    <input class="btn btn-default" type="reset" value="{$LANG.cancel}" />
                                </div>

                            </form>

                        {/if}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

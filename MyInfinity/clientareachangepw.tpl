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
						{if $successful}
						    {include file="$template/includes/alert.tpl" type="success" msg=$LANG.changessavedsuccessfully textcenter=true}
						{/if}
						
						{if $errormessage}
						    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
						{/if}
						
						<form class="form-horizontal using-password-strength" method="post" action="clientarea.php?action=changepw" role="form">
						    <input type="hidden" name="submit" value="true" />
						    <div class="form-group row">
						        <label for="inputExistingPassword" class="col-sm-4 control-label">{$LANG.existingpassword}</label>
						        <div class="col-sm-6">
						            <input type="password" class="form-control" name="existingpw" id="inputExistingPassword" autocomplete="off" />
						        </div>
						    </div>
						    <div id="newPassword1" class="form-group row has-feedback">
						        <label for="inputNewPassword1" class="col-sm-4 control-label">{$LANG.newpassword}</label>
						        <div class="col-sm-6">
						            <input type="password" class="form-control" name="newpw" id="inputNewPassword1" autocomplete="off" />
						            <span class="form-control-feedback glyphicon"></span>
						            {include file="$template/includes/pwstrength.tpl"}
						        </div>
						    </div>
						    <div id="newPassword2" class="form-group row has-feedback">
						        <label for="inputNewPassword2" class="col-sm-4 control-label">{$LANG.confirmnewpassword}</label>
						        <div class="col-sm-6">
						            <input type="password" class="form-control" name="confirmpw" id="inputNewPassword2" autocomplete="off" />
						            <span class="form-control-feedback glyphicon"></span>
						            <div id="inputNewPassword2Msg"></div>
						        </div>
						    </div>
						    <div class="form-group">
						        <div class="text-center">
						            <input class="btn btn-primary" type="submit" value="{$LANG.clientareasavechanges}" />
						            <input class="btn btn-default" type="reset" value="{$LANG.cancel}" />
						        </div>
						    </div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

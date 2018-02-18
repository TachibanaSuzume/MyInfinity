<body class="simple-page">
	<div class="simple-page-wrap">
		<div class="simple-page-logo animated swing">
			<a href="{$WEB_ROOT}/index.php">
				<span><i class="fa fa-key"></i></span>
				<span>{$LANG.pwreset}</span>
			</a>
		</div>
		
		<div class="simple-page-form animated flipInY" id="reset-password-form">

		{if $invalidlink}

			{include file="$template/includes/alert.tpl" type="danger" msg=$invalidlink textcenter=true}

		{elseif $success}

			{include file="$template/includes/alert.tpl" type="success" msg=$LANG.pwresetvalidationsuccess textcenter=true}

			<p class="text-center">
				{$LANG.pwresetsuccessdesc|sprintf2:'<a href="{$systemurl}clientarea.php">':'</a>'}
			</p>

		{else}

			{if $errormessage}
				{include file="$template/includes/alert.tpl" type="danger" msg=$errormessage textcenter=true}
			{/if}

			<form class="using-password-strength" method="post" action="{$smarty.server.PHP_SELF}?action=pwreset">
				<input type="hidden" name="key" id="key" value="{$key}" />

				<div id="newPassword1" class="form-group has-feedback">
					<input type="password" name="newpw" id="inputNewPassword1" class="form-control" autocomplete="off" placeholder="{$LANG.newpassword}"/>
					<span class="form-control-feedback glyphicon glyphicon-password"></span>
				</div>

				<div id="newPassword2" class="form-group has-feedback">
					<input type="password" name="confirmpw" id="inputNewPassword2" class="form-control" autocomplete="off" placeholder="{$LANG.confirmnewpassword}"/>
					<span class="form-control-feedback glyphicon glyphicon-password"></span>
					<div id="inputNewPassword2Msg"></div>
				</div>

				<div class="form-group">
					<label class="control-label">{$LANG.pwstrength}</label>
					{include file="$template/includes/pwstrength.tpl"}
				</div>

				<div class="form-group">
					<div class="text-center">
						<input class="btn btn-primary" type="submit" name="submit" value="{$LANG.clientareasavechanges}" />
						<input class="btn btn-danger" type="reset" value="{$LANG.cancel}" />
					</div>
				</div>

			</form>

		{/if}
		</div>
	
		<div class="simple-page-footer">
			<p class="copyright pull-left"><a href="{$systemurl}login.php">{$LANG.loginbutton}</a></p>
			<p class="footer-menu pull-right"><a href="{$systemurl}register.php">{$LANG.register}</a></p>
		</div>
	</div>
</body>
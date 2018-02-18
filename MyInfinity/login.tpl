<body class="simple-page">
	<div class="simple-page-wrap">
		<div class="simple-page-logo animated swing">
			<a href="{$WEB_ROOT}/index.php">
				<span><i class="fa fa-sign-in"></i></span>
				<span>{$LANG.login}</span>
			</a>
		</div>
		{if $incorrect}
			{include file="$template/includes/alert.tpl" type="error" msg=$LANG.loginincorrect textcenter=true}
		{elseif $verificationId && empty($transientDataName)}
			{include file="$template/includes/alert.tpl" type="error" msg=$LANG.verificationKeyExpired textcenter=true}
		{elseif $ssoredirect}
			{include file="$template/includes/alert.tpl" type="info" msg=$LANG.sso.redirectafterlogin textcenter=true}
		{/if}
		<div class="simple-page-form animated flipInY" id="login-form">
			<form method="post" action="{$systemurl}dologin.php">
				<div class="form-group">
					<input id="inputEmail" name="username" type="email" class="form-control" placeholder="{$LANG.clientareaemail}">
				</div>

				<div class="form-group">
					<input id="inputPassword" name="password" type="password" class="form-control" placeholder="{$LANG.clientareapassword}">
				</div>

				<div class="form-group m-b-xl">
					<div class="checkbox checkbox-primary">
						<input type="checkbox" id="rememberme"/>
						<label for="rememberme">{$LANG.loginrememberme}</label>
					</div>
				</div>
				<input type="submit" class="btn btn-primary" value="{$LANG.loginbutton}">
			</form>
		</div>

		<div class="simple-page-footer">
			<p class="copyright pull-left"><a href="{$systemurl}register.php">{$LANG.register}</a></p>
			<p class="footer-menu pull-right"><a href="{$systemurl}pwreset.php">{$LANG.forgotpw}</a></p>
		</div>

	</div>
</body>
<body class="simple-page">
	<div class="simple-page-wrap">
		<div class="simple-page-logo animated swing">
			<a href="{$WEB_ROOT}/index.php">
				<span><i class="fa fa-key"></i></span>
				<span>{$LANG.pwreset}</span>
			</a>
		</div>
		
		<div class="simple-page-form animated flipInY" id="reset-password-form">
		{if $loggedin}
			{include file="$template/includes/alert.tpl" type="error" msg=$LANG.noPasswordResetWhenLoggedIn textcenter=true}
		{else}
		
			{if $success}

				{include file="$template/includes/alert.tpl" type="success" msg=$LANG.pwresetvalidationsent textcenter=true}

				<p>{$LANG.pwresetvalidationcheckemail}</p>

			{else}

				{if $errormessage}
					{include file="$template/includes/alert.tpl" type="error" msg=$errormessage textcenter=true}
				{/if}

				{if $securityquestion}

					<p>{$LANG.pwresetsecurityquestionrequired}</p>

					<form method="post" action="{$systemurl}pwreset.php"  class="form-stacked">
						<input type="hidden" name="action" value="reset" />
						<input type="hidden" name="email" value="{$email}" />

						<div class="form-group">
							<input type="text" name="answer" class="form-control" id="inputAnswer" placeholder="{$securityquestion}" autofocus>
						</div>

						<div class="form-group text-center">
							<button type="submit" class="btn btn-primary">{$LANG.pwresetsubmit}</button>
						</div>

					</form>

				{else}

					<p>{$LANG.pwresetemailneeded}</p>

					<form method="post" action="{$systemsslurl}pwreset.php" role="form">
						<input type="hidden" name="action" value="reset" />

						<div class="form-group">
							<input type="email" name="email" class="form-control" id="inputEmail" placeholder="{$LANG.enteremail}" autofocus>
						</div>

						<div class="form-group text-center">
							<button type="submit" class="btn btn-primary">{$LANG.pwresetsubmit}</button>
						</div>

					</form>

				{/if}

			{/if}
		{/if}
		</div>
	
		<div class="simple-page-footer">
			<p class="copyright pull-left"><a href="{$systemurl}login.php">{$LANG.loginbutton}</a></p>
			<p class="footer-menu pull-right"><a href="{$systemurl}register.php">{$LANG.register}</a></p>
		</div>
	</div>
</body>
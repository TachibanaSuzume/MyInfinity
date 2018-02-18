<body class="simple-page">
	<div class="simple-page-wrap">
		<div class="simple-page-logo animated swing">
			<a href="{$WEB_ROOT}/index.php">
				<span><i class="fa fa-user-plus"></i></span>
				<span>{$LANG.register}</span>
			</a>
		</div>
	{if $registrationDisabled}
		{include file="$template/includes/alert.tpl" type="error" msg=$LANG.registerCreateAccount|cat:' <strong><a href="cart.php" class="alert-link">'|cat:$LANG.registerCreateAccountOrder|cat:'</a></strong>'}
	{/if}

	{if $errormessage}
		{include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
	{/if}		
	<div class="simple-page-form animated flipInY" id="signup-form">
		<form method="post" class="using-password-strength" action="{$smarty.server.PHP_SELF}" role="form">
			<input type="hidden" name="register" value="true"/>
			<input type="hidden" name="state" value="state" />
			<input type="hidden" name="city" value="city" />
			<input type="hidden" name="postcode" value="postcode" />
			<input type="hidden" name="companyname" value="none" />
			<input type="hidden" name="address1" value="address1" />
			<input type="hidden" name="address2" value="address2" />
			<input type="hidden" name="lastname" value="~" />
			<input type="hidden" name="country"  value="CN" />
			
			<div class="form-group">
				<input name="firstname" id="firstname" value="{$clientfirstname}" class="form-control" placeholder="{$LANG.clientareafirstname}">
			</div>

			<div class="form-group">
				<input type="email" name="email" id="email" value="{$clientemail}" class="form-control" placeholder="{$LANG.clientareaemail}">
			</div>
			
			<div class="form-group">
				<input type="tel" name="phonenumber" id="phonenumber" value="{$clientphonenumber}" class="form-control" placeholder="{$LANG.clientareaphonenumber}" {if !in_array('phonenumber', $optionalFields)}required{/if} tabindex="6" />
			</div>

			<div id="newPassword1" class="form-group has-feedback">
				<input type="password" class="form-control" id="inputNewPassword1" name="password" autocomplete="off" placeholder="{$LANG.clientareapassword}" tabindex="12" />
				<span class="form-control-feedback glyphicon glyphicon-password"></span>
			</div>
			
			<div class="form-group">
				{include file="$template/includes/pwstrength.tpl"}
			</div>
			
			<div id="newPassword2" class="form-group has-feedback">
				<input type="password" class="form-control" id="inputNewPassword2" name="password2" autocomplete="off" placeholder="{$LANG.clientareaconfirmpassword}" tabindex="13" />
				<span class="form-control-feedback glyphicon glyphicon-password"></span>
				<div id="inputNewPassword2Msg">
				</div>
			</div>
			
			{if $customfields}
				{foreach from=$customfields key=num item=customfield}
					<div class="form-group">
						<label class="control-label" for="customfield{$customfield.id}">{$customfield.name}</label>
						<div class="control">
							{$customfield.input} {$customfield.description}
						</div>
					</div>
				{/foreach}
			{/if}

			{if $currencies}
				<div class="form-group">
					<select id="currency" name="currency" class="form-control">
						{foreach from=$currencies item=curr}
						<option value="{$curr.id}"{if !$smarty.post.currency && $curr.default || $smarty.post.currency eq $curr.id } selected{/if}>{$curr.code}</option>
						{/foreach}
					</select>
				</div>
			{/if}

			{if $securityquestions}
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">{$LANG.clientareasecurityquestion}:</h3>
					</div>
					<div class="panel-body">
						<div class="form-group col-sm-12">
							<select name="securityqid" id="securityqid" class="form-control">
								{foreach key=num item=question from=$securityquestions}
									<option value={$question.id}>{$question.question}</option>
								{/foreach}
							</select>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="securityqans">{$LANG.clientareasecurityanswer}</label>
							<div class="col-sm-6">
								<input type="password" name="securityqans" id="securityqans" class="form-control" autocomplete="off" />
							</div>
						</div>
					</div>
				</div>
			{/if}
			
			{include file="$template/includes/captcha.tpl"}
			
			{if $accepttos}
				<div class="form-group text-center">
					<label class="checkbox">
						<input type="checkbox" name="accepttos" class="accepttos" style="margin-left: 0;position: relative;" tabindex="14">
						{$LANG.ordertosagreement} <a href="{$tosurl}" target="_blank">{$LANG.ordertos}</a>
					</label>
				</div>
			{/if}
			
			<div class="form-group text-center">
				<input class="btn btn-block btn-primary" type="submit" value="{$LANG.clientregistertitle}" tabindex="15"/>
			</div>
		</form>
	</div>

	<div class="simple-page-footer">
		<p class="copyright pull-left"><a href="{$systemurl}login.php">{$LANG.loginbutton}</a></p>
		<p class="footer-menu pull-right"><a href="{$systemurl}pwreset.php">{$LANG.forgotpw}</a></p>
	</div>
</body>
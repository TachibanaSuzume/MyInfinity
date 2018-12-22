{if $captcha}
        {if $filename == 'index'}
            <div class="domainchecker-homepage-captcha">
        {/if}
			<div class="row">
				<div class="form-group col-sm-9">
					<input id="inputCaptcha" type="text" name="code" maxlength="5" class="form-control" placeholder="{$LANG.captchatitle}"/>
				</div>



				<div class="form-group col-sm-3">
					<img id="inputCaptchaImage" src="{$systemurl}includes/verifyimage.php" align="middle" />
				</div>
			</div>

        {if $filename == 'index'}
            </div>
        {/if}
{/if}

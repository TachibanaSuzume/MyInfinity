{if $captcha}
        {if $filename == 'index'}
            <div class="domainchecker-homepage-captcha">
        {/if}


				<div class="form-group">
					<img id="inputCaptchaImage" src="{$systemurl}includes/verifyimage.php" align="middle" />
				</div>
				
				<div class="form-group">
					<input id="inputCaptcha" type="text" name="code" maxlength="5" class="form-control" placeholder="{$LANG.captchatitle}"/>
				</div>



        {if $filename == 'index'}
            </div>
        {/if}
{/if}

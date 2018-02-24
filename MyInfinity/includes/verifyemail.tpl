<div class="profile-header">      
    {if $emailVerificationIdValid}
        <div class="email-verification">
            <div class="container" style="width: 100%;">
                <i class="fa fa-check" style="padding:5px 20px 0 0;"></i>
                <div class="text">
                    <span style="font-size: large;">{$LANG.emailAddressVerified}</span>
                </div>
            </div>
        </div>  
    {elseif $emailVerificationIdValid === false}
        <div class="email-verification">
            <div class="container" style="width: 100%;">
                <div class="pull-right">
                    <button id="btnResendVerificationEmail" class="btn btn-default btn-sm">
                        {$LANG.resendEmail}
                    </button>
                </div>
                <i class="fa fa-times-circle" style="padding:5px 20px 0 0;"></i>
                <div class="text">
                    <span style="font-size: large;">{$LANG.emailKeyExpired}</span>
                </div>
            </div>
        </div>
    {elseif $emailVerificationPending && !$showingLoginPage}
        <div class="email-verification">
            <div class="container" style="width: 100%;">
                <button id="btnResendVerificationEmail" class="btn btn-default btn-xs btn-resend-verify-email hidden-xs pull-right">
                    {$LANG.resendEmail}
                </button>
                <i class="fa fa-warning" style="padding:5px 20px 0 0;"></i>
                <div class="text">
                    <span style="font-size: large;">{$LANG.verifyEmailAddress}</span>
                </div>
            </div>
        </div>
    {/if}
</div>



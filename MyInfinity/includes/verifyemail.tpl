<div class="profile-header">      
    {if $emailVerificationIdValid}
        <div class="email-verification">
            <div class="container">
                <i class="fa fa-check" style="padding:5px 20px 0 0;"></i>
                <div class="text">
                    <span style="font-size: large;">{$LANG.emailAddressVerified}</span>
                </div>
            </div>
        </div>  
    {elseif $emailVerificationIdValid === false}
        <div class="email-verification">
            <div class="container">
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
            <div class="container">
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



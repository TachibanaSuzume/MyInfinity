


{if $formaction == 'dologin.php' || $filename == 'pwreset' || $filename == 'register' || $filename == 'login' || $filename == 'clientarea' && !$loggedin}
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/libs/bower/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/css/all.min.css">	
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/libs/bower/animate.css/animate.min.css">
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/css/bootstrap.css">
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/css/core.css">
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/css/misc-pages.css">
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/css/app.css">	
	<script src="{$WEB_ROOT}/templates/{$template}/assets/libs/bower/jquery/dist/script.min.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/assets/js/main.js"></script>

	<script src="{$WEB_ROOT}/templates/{$template}/assets/js/clipboard.min.js"></script>
{else}
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/libs/bower/material-design-iconic-font/dist/css/material-design-iconic-font.css">
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/css/all.min.css">	
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/libs/bower/animate.css/animate.min.css">
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/libs/bower/perfect-scrollbar/css/perfect-scrollbar.css">
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/css/core.css">
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/css/app.css">	
	<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/css/style.css">
	<script src="{$WEB_ROOT}/templates/{$template}/assets/libs/bower/breakpoints.js/dist/breakpoints.min.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/assets/js/script.min.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/assets/js/clipboard.min.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/assets/js/main.js"></script>

	<script type="text/javascript">
		var csrfToken = '{$token}',
			markdownGuide = '{lang key="markdown.title"}',
			locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
			saved = '{lang key="markdown.saved"}',
			saving = '{lang key="markdown.saving"}';
	</script>


	<script>
		Breakpoints();
	</script>

	{if $templatefile == "viewticket" && !$loggedin}
	  <meta name="robots" content="noindex" />
	{/if}

{/if}
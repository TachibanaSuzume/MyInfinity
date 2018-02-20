<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	<meta name="description" content="Admin, Dashboard, Bootstrap" />
	<link rel="shortcut icon" href="{$WEB_ROOT}/templates/{$template}/assets/favicon.ico" />
	<title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
	
	{include file="$template/includes/head.tpl"}
	
	{$headoutput}

</head>

{$headeroutput}

{if $formaction == 'dologin.php' || $filename == 'pwreset' || $filename == 'register' || $filename == 'login' || $filename == 'clientarea' && !$loggedin}

{else}

<body class="menubar-left menubar-unfold menubar-light theme-primary">

<nav id="app-navbar" class="navbar navbar-inverse navbar-fixed-top primary">

  {include file="$template/includes/navbar.tpl"}
  
</nav>

<aside id="menubar" class="menubar light">
  <div class="app-user">
  
  {include file="$template/includes/aside.tpl"}
      
  </div>

  <div class="menubar-scroll">
    <div class="menubar-scroll-inner">
      <ul class="app-menu">
		{if !$loggedin}
			<li class="has-submenu">
			  <a href="javascript:void(0)" class="submenu-toggle">
				<i class="menu-icon zmdi zmdi-pin zmdi-hc-lg"></i>
				<span class="menu-text">{$LANG.loginbutton}{if $condlinks.allowClientRegistration}/{$LANG.clientregistertitle}{/if}</span>
				<i class="menu-caret zmdi zmdi-hc-sm zmdi-chevron-right"></i>
			  </a>
			  <ul class="submenu">
				<li><a href="{$WEB_ROOT}/login.php"><i class="zmdi m-r-md zmdi-hc-lg zmdi-account-box"></i>{$LANG.loginbutton}</a></li>
				{if $condlinks.allowClientRegistration}
				<li><a href="{$WEB_ROOT}/register.php"><i class="zmdi m-r-md zmdi-hc-lg zmdi-pin"></i>{$LANG.clientregistertitle}</a></li>
				{/if}
			  </ul>
			</li>
		{/if}
		
		{include file="$template/includes/sidebar.tpl" navbar=$primaryNavbar}
		
		{if $loggedin}
        <li class="menu-separator"><hr></li>

        <li>
          <a href="/logout.php">
            <i class="menu-icon zmdi zmdi-power zmdi-hc-lg"></i>
            <span class="menu-text">{$LANG.logouttitle}</span>
          </a>
        </li>
		{/if}

      </ul>
    </div>
  </div>
</aside>

<main id="app-main" class="app-main">
  <div class="wrap">
{/if}

{if $inShoppingCart || strstr($templatefile, 'store') || strstr($templatefile, 'oauth')}
<section class="app-content">
    <div class="row">
        <div class="col-md-12">
            <div class="container-fluid">
                <div class="panel panel-default">
                    <div class="panel-heading bg-white">
                        {if $displayTitle}<h4 class="panel-title pull-left">{$displayTitle}</h4>{/if}
                        </br>
                    </div>
                    <div class="panel-body">
{/if}
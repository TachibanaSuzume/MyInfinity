<!-- navbar header -->
  <div class="navbar-header">
    <button type="button" id="menubar-toggle-btn" class="navbar-toggle visible-xs-inline-block navbar-toggle-left hamburger hamburger--collapse js-hamburger">
      <span class="sr-only">Toggle navigation</span>
      <span class="hamburger-box"><span class="hamburger-inner"></span></span>
    </button>

    <button type="button" class="navbar-toggle navbar-toggle-right collapsed" data-toggle="collapse" data-target="#app-navbar-collapse" aria-expanded="false">
      <span class="sr-only">Toggle navigation</span>
      <span class="zmdi zmdi-hc-lg zmdi-more"></span>
    </button>

    <button type="button" class="navbar-toggle navbar-toggle-right collapsed" data-toggle="collapse" data-target="#navbar-search" aria-expanded="false">
      <span class="sr-only">Toggle navigation</span>
      <span class="zmdi zmdi-hc-lg zmdi-search"></span>
    </button>

    <a href="index.php" class="navbar-brand">
      <span class="brand-icon"><i class="fa fa-asterisk"></i></span>
      <span class="brand-name">{$companyname}</span>
    </a>
  </div><!-- .navbar-header -->
  
  <div class="navbar-container container-fluid">
    <div class="collapse navbar-collapse" id="app-navbar-collapse">
      <ul class="nav navbar-toolbar navbar-toolbar-left navbar-left">
        <li class="hidden-float hidden-menubar-top">
          <a href="javascript:void(0)" role="button" id="menubar-fold-btn" class="hamburger hamburger--arrowalt is-active js-hamburger">
            <span class="hamburger-box"><span class="hamburger-inner"></span></span>
          </a>
        </li>
        <li>
          <h5 class="page-title hidden-menubar-top hidden-float">{if $breadcrumb}{include file="$template/includes/breadcrumb.tpl"}{else}{$pagetitle}{/if}</h5>
        </li>
      </ul>
	  
      <ul class="nav navbar-toolbar navbar-toolbar-right navbar-right">
      	<li class="nav-item dropdown hidden-float">
          <a href="javascript:void(0)" data-toggle="collapse" data-target="#navbar-search" aria-expanded="false">
            <i class="zmdi zmdi-hc-lg zmdi-search"></i>
          </a>
        </li>

		{if $loggedin}
			<li class="dropdown">
			  <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="zmdi zmdi-hc-lg zmdi-notifications"></i>{if count($clientAlerts) > 0}<span class="span_position"></span>{/if}</a>
			  <div class="media-group dropdown-menu animated flipInY">
				{foreach $clientAlerts as $alert}
					<a href="{$alert->getLink()}" class="media-group-item">
					  <div class="media">
					    <div class="media-left">
							<i class="menu-icon fa fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}warning{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
						</div>
						<div class="media-body">
						  <small class="media-meta">{$alert->getMessage()}</small>
						</div>
					  </div>
					</a>
				{foreachelse}
					<a href="javascript:void(0)" class="media-group-item">
					  <div class="media">
						<div class="media-body">
						  <small class="media-meta">{$LANG.notificationsnone}</small>
						</div>
					  </div>
					</a>
				{/foreach}
			  </div>
			</li>
			<li class="dropdown">
			  <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="zmdi zmdi-hc-lg zmdi-settings"></i></a>
			  <ul class="dropdown-menu animated flipInY">
				<li><a href="{$WEB_ROOT}/clientarea.php?action=details"><i class="zmdi m-r-md zmdi-hc-lg zmdi-account-box"></i>{$LANG.clientareanavdetails}</a></li>
				<li><a href="{$WEB_ROOT}/clientarea.php?action=changepw"><i class="zmdi m-r-md zmdi-hc-lg zmdi-settings"></i>{$LANG.clientareanavchangepw}</a></li>
				{if $condlinks.addfunds}
				<li><a href="{$WEB_ROOT}/clientarea.php?action=addfunds"><i class="zmdi m-r-md zmdi-hc-lg zmdi-balance-wallet"></i>{$LANG.addfunds}</a></li>
				{/if}
				<li role="separator" class="divider"></li>
				<li><a href="{$WEB_ROOT}/logout.php"><i class="zmdi m-r-md zmdi-hc-lg zmdi-info"></i>{$LANG.logouttitle}</a></li>
			  </ul>
			</li>
		{else}
			<li class="dropdown">
			  <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="zmdi zmdi-hc-lg zmdi-settings"></i></a>
			  <ul class="dropdown-menu animated flipInY">
				<li><a href="{$WEB_ROOT}/login.php"><i class="zmdi m-r-md zmdi-hc-lg zmdi-account-box"></i>{$LANG.login}</a></li>
				{if $condlinks.allowClientRegistration}
				<li><a href="{$WEB_ROOT}/register.php"><i class="zmdi m-r-md zmdi-hc-lg zmdi-pin"></i>{$LANG.register}</a></li>
				{/if}
			  </ul>
			</li>
		{/if}
        <li class="dropdown">
          <a href="javascript:void(0)" class="side-panel-toggle" data-toggle="class" data-target="#side-panel" data-class="open" role="button"><i class="zmdi zmdi-hc-lg zmdi-globe"></i></a>
        </li>
      </ul>
    </div>
  </div>


<div id="navbar-search" class="navbar-search collapse">
  <div class="navbar-search-inner">
  	<form role="form" method="post" action="clientarea.php?action=kbsearch">
      <span class="search-icon"><i class="fa fa-search"></i></span>
      <input class="search-field" name="search" type="search" placeholder="{$LANG.clientHomeSearchKb}"/>
    </form>
    <button type="button" class="search-close" data-toggle="collapse" data-target="#navbar-search" aria-expanded="false">
      <i class="fa fa-close"></i>
    </button>
  </div>
  <div class="navbar-search-backdrop" data-toggle="collapse" data-target="#navbar-search" aria-expanded="false"></div>
</div>
	<div class="media">
	  <div class="media-left">
        <div class="avatar avatar-md avatar-circle">
		{if $loggedin}
          <a href="javascript:void(0)"><img class="img-avatar img-avatar32" src="//cn.gravatar.com/avatar/{$clientsdetails.email|md5}?s=64&d={$systemurl}/templates/{$template}/assets/images/default.jpg" alt="" /></a>
		{else}
		  <a href="javascript:void(0)"><img class="img-responsive" src="{$WEB_ROOT}/templates/{$template}/assets/images/default.jpg" alt="avatar"/></a>
		{/if}
        </div>
      </div>
      <div class="media-body">
        <div class="foldable">
		 
		  {if $loggedin}
			<h5><a href="javascript:void(0)" class="username">{$clientsdetails.firstname}</a></h5>
			<ul>
            <li class="dropdown">
              <a href="javascript:void(0)" class="dropdown-toggle usertitle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <small>{$LANG.more}</small>
                <span class="caret"></span>
              </a>
              <ul class="dropdown-menu animated flipInY">
                <li>
                  <a class="text-color" href="{$WEB_ROOT}/clientarea.php?action=details">
                    <span class="m-r-xs"><i class="fa fa-user"></i></span>
                    <span>{$LANG.clientareanavdetails}</span>
                  </a>
                </li>
                <li>
                  <a class="text-color" href="{$WEB_ROOT}/clientarea.php?action=changepw">
                    <span class="m-r-xs"><i class="fa fa-gear"></i></span>
                    <span>{$LANG.clientareanavchangepw}</span>
                  </a>
                </li>
                <li>
                  <a class="text-color" href="{$WEB_ROOT}/clientarea.php?action=emails">
                      <span class="m-r-xs"><i class="fa fa-envelope-o"></i></span>
                      <span>{$LANG.clientareaemails}</span>
                  </a>
                </li>
				
        				{if $condlinks.addfunds}
        				<li>
        					<a class="text-color" href="{$WEB_ROOT}/clientarea.php?action=addfunds">
                      <span class="m-r-xs"><i class="fa fa-credit-card"></i></span>
                      <span>{$LANG.addfunds}</span>
        					</a>
        				</li>
        				{/if}
						
                <li role="separator" class="divider"></li>
                <li>
                  <a class="text-color" href="{$WEB_ROOT}/logout.php">
                    <span class="m-r-xs"><i class="fa fa-power-off"></i></span>
                    <span>{$LANG.logouttitle}</span>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
		  {else}
		    <h5><a href="/login.php" class="username">{$LANG.login}</a></h5>
		  {/if}
          
          
        </div>
      </div>
    </div>
{foreach $navbar as $item}
	<li {if $item->hasChildren()} class="has-submenu"{/if}>
		<a {if $item->hasChildren()} href="javascript:void(0)" class="submenu-toggle" {else} href="{$item->getUri()}"{/if}>
			<i class="menu-icon fa fa-{$item->getUri()|replace:'/':''|replace:'.php':''|replace:'index?rp=':''|replace:'index':'home'|replace:'clientarea':'home'|replace:'services':'server'|replace:'billing':'credit-card-alt'|replace:'submitticket':'ticket'|replace:'cart':'shopping-cart'|replace:'announcements':'bullhorn'|replace:'knowledgebase':'question'|replace:'serverstatus':'server'|replace:'contact':'globe'|replace:'affiliates':'universal-access'|replace:'domains':'globe'|replace:'#':'certificate'}"></i>
            <span class="menu-text">{$item->getLabel()}</span>
			{if $item->hasChildren()} <i class="menu-caret zmdi zmdi-hc-sm zmdi-chevron-right"></i> {/if}
        </a>
	{if $item->hasChildren()}
            <ul class="submenu">
            {foreach $item->getChildren() as $childItem}
				{if $childItem->getLabel() == "-----"}
					<li class="menu-separator"><hr></li>
				{else}
					<li id="{$childItem->getId()}">
						<a href="{$childItem->getUri()}">
							{if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
							<span class="menu-text">{$childItem->getLabel()}</span>
							{if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
						</a>
					</li>
				{/if}	
            {/foreach}
            </ul>
        {/if}
    </li> 
{/foreach}

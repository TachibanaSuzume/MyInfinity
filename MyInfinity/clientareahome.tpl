	<section class="app-content">
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<div class="widget p-md clearfix">
					<div class="pull-left">
						<h3 class="widget-title">Welcome to {$companyname}</h3>
						<a href="{$WEB_ROOT}clientarea.php?action=services"><button type="button" class="btn btn-info btn-xs">{$LANG.clientareanavservices}</button></a>
						<a href="{$WEB_ROOT}supporttickets.php"><button type="button" class="btn btn-warning btn-xs">{$LANG.clientareanavsupporttickets}</button></a>
						<a href="{$WEB_ROOT}clientarea.php?action=invoices"><button type="button" class="btn btn-pink btn-xs">{$LANG.invoices}</button></a>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-sm-6">
				<div class="widget p-md clearfix">
					<div class="pull-left">
						<h3 class="widget-title">{$LANG.availcreditbal}</h3>
						<small class="text-color"><a href="{if $condlinks.addfunds}{$WEB_ROOT}/clientarea.php?action=addfunds{else}javascript:void(0){/if}"><button type="button" class="btn btn-xs btn-{if $condlinks.addfunds}success{else}danger{/if}">{$LANG.addfunds}</button></a></small>
					</div>
					<span class="pull-right fz-lg fw-500 counter" data-plugin="counterUp">{$clientsstats.creditbalance}</span>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-3 col-sm-6" onclick="window.location='clientarea.php?action=services'">
				<div class="widget stats-widget">
					<div class="widget-body clearfix">
						<div class="pull-left">
							<h3 class="widget-title text-primary"><span class="counter" data-plugin="counterUp">{$clientsstats.productsnumactive}</span></h3>
							<small>{$LANG.navservices}</small>
						</div>
						<span class="pull-right big-icon watermark"><i class="fa fa-server"></i></span>
					</div>
					<footer class="widget-footer bg-primary">
					</footer>
				</div>
			</div>

			<div class="col-md-3 col-sm-6" onclick="window.location='supporttickets.php'">
				<div class="widget stats-widget">
					<div class="widget-body clearfix">
						<div class="pull-left">
							<h3 class="widget-title text-danger"><span class="counter" data-plugin="counterUp">{$clientsstats.numactivetickets}</span></h3>
							<small>{$LANG.navtickets}</small>
						</div>
						<span class="pull-right big-icon watermark"><i class="fa fa-ticket"></i></span>
					</div>
					<footer class="widget-footer bg-danger">
					</footer>
				</div>
			</div>

			<div class="col-md-3 col-sm-6" onclick="window.location='clientarea.php?action=addfunds'">
				<div class="widget stats-widget">
					<div class="widget-body clearfix">
						<div class="pull-left">
							<h3 class="widget-title text-success"><span class="counter" data-plugin="counterUp">{$clientsstats.creditbalance}</span></h3>
							<small>{$LANG.availcreditbal}</small>
						</div>
						<span class="pull-right big-icon watermark"><i class="fa fa-money"></i></span>
					</div>
					<footer class="widget-footer bg-success">
					</footer>
				</div>
			</div>

			<div class="col-md-3 col-sm-6" onclick="window.location='clientarea.php?action=invoices'">
				<div class="widget stats-widget">
					<div class="widget-body clearfix">
						<div class="pull-left">
							<h3 class="widget-title text-warning"><span class="counter" data-plugin="counterUp">{$clientsstats.numunpaidinvoices}</span></h3>
							<small>{$LANG.invoicesoutstandinginvoices}</small>
						</div>
						<span class="pull-right big-icon watermark"><i class="fa fa-file-text-o"></i></span>
					</div>
					<footer class="widget-footer bg-warning">
					</footer>
				</div>
			</div>
		</div>

		{function name=outputHomePanels}
		<div class="widget">
			<header class="widget-header">
				<h4 class="widget-title pull-left">
				{if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
				{$item->getLabel()}
				{if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}</h4>
				{if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
				<div class="pull-right">
					<a href="{$item->getExtra('btn-link')}" >
						<button type="button" class="btn bg-color-{$item->getExtra('color')} btn-xs">{if $item->getExtra('btn-icon')}<i class="fa {$item->getExtra('btn-icon')}"></i>  {/if}{$item->getExtra('btn-text')}</button>	
					</a>
				</div>	
				{/if}
			</header><!-- .widget-header -->
			<hr class="widget-separator">
			{if $item->hasBodyHtml()}
				<div class="widget-body">
					{$item->getBodyHtml()}
				</div>
			{/if}
			{if $item->hasChildren()}
				<div class="widget-body">
						<div class="streamline">
						{foreach $item->getChildren() as $childItem}
							<div class="sl-item sl-primary">
								<a href="{if $childItem->getUri()}{$childItem->getUri()}{else}javascript:void(0){/if}" id="{$childItem->getId()}" {if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if}>
								<div class="sl-content">
									<small class="text-muted">{if $childItem->hasBadge()}{$childItem->getBadge()}{/if}</small>
									<p>{if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>{/if}{$childItem->getLabel()}</p>
								</div>
								</a>
							</div>
						{/foreach}
					</div>
				</div>
			{/if}
			{if $item->hasFooterHtml()}
				<footer class="widget-footer">
					{$item->getFooterHtml()}
				</footer>
			{/if}
		</div>
		{/function}

		
		<div class="row">

				<div class="col-sm-6">		
		            {foreach $panels as $item}
		                {if $item@iteration is odd}
		                    {outputHomePanels}
		                {/if}
		            {/foreach}

		        </div>
		        <div class="col-sm-6">

		            {foreach $panels as $item}
		                {if $item@iteration is even}
		                    {outputHomePanels}
		                {/if}
		            {/foreach}

		        </div>

		</div>
	</section>
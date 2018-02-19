{if $inactive}
    {include file="$template/includes/alert.tpl" type="danger" msg=$LANG.affiliatesdisabled additionalClass="alert-primary"}
{else}

<section class="app-content">
	{if $withdrawrequestsent}
		<div class="alert alert-success alert-primary">
			 <i class="zmdi zmdi-check-circle"></i>
			 {$LANG.affiliateswithdrawalrequestsuccessful}
		</div>
	{/if}
	<div class="row">
		<div class="col-md-8">
			<div class="container-fluid">
				<div class="panel panel-default">
					<div class="panel-heading bg-white">
						<h4 class="panel-title pull-left">{$displayTitle}</h4>
						</br>
					</div>
                    <div class="panel-body">
						<div class="tabs">
							<ul role="tablist" class="nav nav-tabs nav-affiliate">
								<li class="nav-item active">
									<a href="#tab-referrals" data-toggle="tab" role="tab" class="nav-link active">{$LANG.affiliatestitle}</a>
								</li>
								<li class="nav-item">
									<a href="#tab-referals" data-toggle="tab" role="tab" class="nav-link">{$LANG.affiliatesreferals}</a>
								</li>
								{if $affiliatelinkscode}
								<li class="nav-item">
									<a href="#tab-links" data-toggle="tab" role="tab" class="nav-link">{$LANG.affiliateslinktous}</a>
								</li>
								{/if}
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane active" role="tabpanel" id="tab-referrals">
								<h3>{$LANG.affiliatesreferallink}</h3>
								<div class="well mb-4" style="position: relative;">
									<div class="input-group input-copy u-mt-xsmall">
				                        <input class="form-control" value="{$referrallink}" type="text" id="copy_link" readonly />
				                        <span class="input-group-btn">
				                            <button class="btn btn-default" type="button" data-clipboard-target="#copy_link">
				                            	<span class="fa fa-clone"></span>
												<div class="check-animate hidden"></div>
				                            </button>
				                        </span>
				                    </div>
								</div>
							</div>
							<div class="tab-pane fade" role="tabpanel" id="tab-referals">
								{include file="$template/includes/tablelist.tpl" tableName="AffiliatesList"}
    
							    <script type="text/javascript">
							        jQuery(document).ready( function ()
							        {
							            var table = jQuery('#tableAffiliatesList').removeClass('hidden').DataTable();
							            {if $orderby == 'regdate'}
							                table.order(0, '{$sort}');
							            {elseif $orderby == 'product'}
							                table.order(1, '{$sort}');
							            {elseif $orderby == 'amount'}
							                table.order(2, '{$sort}');
							            {elseif $orderby == 'status'}
							                table.order(4, '{$sort}');
							            {/if}
							            table.draw();
							            jQuery('#tableLoading').addClass('hidden');
							        });
							    </script>
							    <div class="table-container clearfix">
							        <table id="tableAffiliatesList" class="table table-list hidden">
							            <thead>
							                <tr>
							                    <th>{$LANG.orderproduct}</th>
							                    <th class="hidden-xs">{$LANG.affiliatesamount}</th>
							                    <th>{$LANG.affiliatescommission}</th>
							                    <th class="hidden-xs">{$LANG.affiliatessignupdate}</th>
							                    <th>{$LANG.affiliatesstatus}</th>
							                </tr>
							            </thead>
							            <tbody>
							            {foreach from=$referrals item=referral}
							            	{if $referral.amountnum}
							                <tr>
							                    <td>{$referral.service}</td>
							                    <td data-order="{$referral.amountnum}" class="text-center hidden-xs">{$referral.amountdesc}</td>
							                    <td data-order="{$referral.commissionnum}" class="text-center">{$referral.commission}</td>
							                    <td class="text-center hidden-xs"><span class="hidden">{$referral.datets}</span>{$referral.date}</td>
							                    <td class="text-center">
								                    <i class="fa fa-circle-o u-color-{$referral.rawstatus|strtolower} u-mr-xsmall"></i>
								                    {$referral.status}
								                </td>
							                </tr>
							                {/if}
							            {/foreach}
							            </tbody>
							        </table>
							        <div class="text-center" id="tableLoading">
							            <p><i class="fa fa-spinner fa-spin"></i> {$LANG.loading}</p>
							        </div>
							    </div>
							</div>
							{if $affiliatelinkscode}
							<div class="tab-pane fade" id="tab-links">
								<div class="well mb-4" style="position: relative;">
									{$affiliatelinkscode}
								</div>
							</div>
							{/if}
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="container-fluid">
				<div class="panel panel-default">
					<div class="panel-heading bg-white">
						<h4 class="panel-title pull-left">{$LANG.knowledgebasemore}</h4>
						</br>
					</div>
                    <div class="panel-body">
                    	<h4>{$LANG.affiliatescommissionsavailable}</h4>
                    	<p>{$balance}</p>
						{if $withdrawlevel}<a class="btn btn-primary btn-rounded" href="{$smarty.server.PHP_SELF}?action=withdrawrequest"><span>{$LANG.affiliatesrequestwithdrawal}</span></a>{/if}
						<h4>{$LANG.affiliateswithdrawn}</h4>
                    	<p>{$withdrawn}</p>
                    	<h4>{$LANG.affiliatescommissionspending}</h4>
                    	<p>{$pendingcommissions}</p>
                    	<h4>{$LANG.affiliatesconversionrate}</h4>
                    	<p>{$conversionrate}%</p>
                    	<h4>{$LANG.affiliatessignups}</h4>
                    	<p>{$signups}</p>
                    	<h4>{$LANG.affiliatesvisitorsreferred}</h4>
                    	<p>{$visitors}</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
{/if}

		
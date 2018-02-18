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
								<li class="nav-item">
									<a href="#tab-referrals" data-toggle="tab" role="tab" class="nav-link active">{$LANG.affiliatestitle}</a>
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
								<h5 class="mt-0 mb-16">{$LANG.affiliatesreferallink}</h5>
								<div class="well mb-4" style="position: relative;">
									<div class="input-group input-copy">
				                        <input class="form-control" value="{$referrallink}" type="text" id="copy_link">
				                        <span class="input-group-btn">
				                            <button class="btn btn-primary" type="button" data-clipboard-target="#copy_link">
				                            	<div class="icon"><span class="s7-file"></span></div>
												<div class="check-animate hidden"></div>
				                            </button>
				                        </span>
				                    </div>
									<span class="copy-message text-success hidden">{$LANG.moduleactionsuccess}</span>
								</div>
								<h5>{$LANG.affiliatesreferals}</h5>
								{if $referrals}
								{include file="$template/includes/tablelist.tpl" tableName="AffiliatesList"}
								<script type="text/javascript">
								    jQuery(document).ready( function () {
								        var table = jQuery('#AffiliatesList').removeClass('hidden').DataTable({ldelim}
											dom: "<'row mai-datatable-header'<'col-sm-6'l><'col-sm-6'f>><'row mai-datatable-body'<'col-sm-12'tr>><'row mai-datatable-footer'<'col-sm-5'i><'col-sm-7'p>>",
									        {if isset($noPagination) && $noPagination}
									        "paging": false,
									        {/if}
									        "info": false,
									        "filter": false,
									        "responsive": true,
									        "oLanguage": {ldelim}
									            "sEmptyTable":     "{$LANG.norecordsfound}",
									            "sInfo":           "{$LANG.tableshowing}",
									            "sInfoEmpty":      "{$LANG.tableempty}",
									            "sInfoFiltered":   "{$LANG.tablefiltered}",
									            "sInfoPostFix":    "",
									            "sInfoThousands":  ",",
									            "sLengthMenu":     "{$LANG.tablelength}",
									            "sLoadingRecords": "{$LANG.tableloading}",
									            "sProcessing":     "{$LANG.tableprocessing}",
									            "sSearch":         "",
									            "sZeroRecords":    "{$LANG.norecordsfound}",
									            "oPaginate": {ldelim}
									                "sFirst":    "{$LANG.tablepagesfirst}",
									                "sLast":     "{$LANG.tablepageslast}",
									                "sNext":     "{$LANG.tablepagesnext}",
									                "sPrevious": "{$LANG.tablepagesprevious}"
									            {rdelim}
									        {rdelim},
									        "pageLength": 10,
									        "order": [
									            [ {if isset($startOrderCol) && $startOrderCol}{$startOrderCol}{else}0{/if}, "asc" ]
									        ],
									        "lengthMenu": [
									            [10, 25, 50, -1],
									            [10, 25, 50, "{$LANG.tableviewall}"]
									        ],
									        "aoColumnDefs": [
									            {ldelim}
									                "bSortable": false,
									                "aTargets": [ {if isset($noSortColumns) && $noSortColumns !== ''}{$noSortColumns}{/if} ]
									            {rdelim},
									            {ldelim}
									                "sType": "string",
									                "aTargets": [ {if isset($filterColumn) && $filterColumn}{$filterColumn}{/if} ]
									            {rdelim}
									        ],
									        "stateSave": true
									    {rdelim});
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
								<div class="panel-table">
									<table id="AffiliatesList" class="table table-affilate">
										<thead>
											<tr>
												<th{if $orderby eq "product"} class="sorting_{$sort}"{/if}><a href="affiliates.php?orderby=product">{$LANG.orderproduct}</a></th>
												<th{if $orderby eq "amount"} class="sorting_{$sort}"{/if}><a href="affiliates.php?orderby=amount">{$LANG.affiliatesamount}</a></th>
												<th>{$LANG.affiliatescommission}</th>
												<th{if $orderby eq "date"} class="sorting_{$sort}"{/if}><a href="affiliates.php?orderby=date">{$LANG.affiliatessignupdate}</a> </th>
												<th{if $orderby eq "status"} class="sorting_{$sort}"{/if}><a href="affiliates.php?orderby=status">{$LANG.affiliatesstatus}</a></th>
											</tr>
										</thead> 
										<tbody>
										{foreach key=num item=referral from=$referrals}
										{if $referral.amountnum && $referral.rawstatus|strtolower == 'active'}
											<tr>
												<td class="cell-title">{$referral.service}</td> 
												<td class="hidden-xs">{$referral.amountdesc}</td>
												<td class="hidden-xs">{$referral.commission}</td>
												<td class="cell-date"><span class="responsive-label text-muted"></span>{$referral.date}</td>
												<td class="cell-status"><span class="label label-simple label-{$referral.rawstatus|strtolower}">{$referral.status}</span></td>
											</tr>
										{/if}
										{/foreach}
										</tbody>
									</table>
									<div id="tableLoading">
					                	<div class="processing">
						                	<div class="preloader">
							                	<div class="spinner">
								                	<div class="dot1"></div>
								                	<div class="dot2"></div>
								                </div>
								            </div>
								        </div>
					            	</div>
								</div>
								{else}
								<div class="no-data no-data-auto mb-16 mt-32">
									<div class="no-data-slogan">
										<div class="icon-holder">
											<i class="zmdi zmdi-file"></i>
											<div class="circle">
												<i class="zmdi zmdi-close"></i>
											</div>
										</div>
										<p>{$LANG.affiliatesnosignups}</p>
									</div>
								</div>
								{/if}
							</div>
							<div class="tab-pane fade" id="tab-links">
								{if $affiliatelinkscode}
								<h5>Choose Preffered Size</h5>
								{$affiliatelinkscode}
								{/if}
							</div>
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
						<div class="row">
							<div class="col-md-12 col-sm-6">
								<div class="panel panel-stats">
									<div class="stats-header">
										<h6>{$LANG.affiliatescommissionsavailable}</h6>
										<div class="value value-xlg text-success">{$balance}</div>
										{if $withdrawlevel}<a class="btn btn-primary btn-rounded" href="{$smarty.server.PHP_SELF}?action=withdrawrequest"><span>{$LANG.affiliatesrequestwithdrawal}</span></a>{/if}
									</div> 
									<div class="stats-values">
										<div class="value col-xs-6">
											<span class="value-sm">{$withdrawn|replace:$rs_currency.suffix:""}<small>{$rs_currency.suffix}</small></span>
											<span class="value-title value-title-sm">{$LANG.affiliateswithdrawn}</span>
										</div>
										<div class="value col-xs-6">
											<span class="value-sm">{$pendingcommissions|replace:$rs_currency.suffix:""}<small>{$rs_currency.suffix}</small></span>
											<span class="value-title value-title-sm">{$LANG.affiliatescommissionspending}</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12 col-sm-6">
								<div class="panel panel-stats">
									<div class="stats-header">
										<h6>{$LANG.affiliatesconversionrate}</h6>
										<div class="value value-xlg text-success">{$conversionrate}%</div>
									</div>
									<div class="stats-values">
										<div class="value col-xs-6">	
											<span class="value-sm">{$signups}</span>
											<span class="value-title value-title-sm">{$LANG.affiliatessignups}</span>
										</div>
										<div class="value col-xs-6">
											<span class="value-sm">{$visitors}</span>
											<span class="value-title value-title-sm">{$LANG.affiliatesvisitorsreferred}</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
{/if}

		
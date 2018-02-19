{include file="$template/header.tpl"}
	{if $invalidInvoiceIdRequested}

        {include file="$template/includes/panel.tpl" type="danger" headerTitle=$LANG.error bodyContent=$LANG.invoiceserror bodyTextCenter=true}

    {else}
	<section class="app-content">
		<div class="row">
			<div class="col-md-9">
				<div class="container-fluid">
					<div class="panel panel-default">
						<div class="panel-heading bg-white">
							<h4 class="panel-title pull-left">{$pagetitle}</h4>
							{if $status eq "Draft"}
								<span class="pull-right" style="color:#888;">{$LANG.invoicesdraft}</span>
							{elseif $status eq "Unpaid"}
								<span class="pull-right" style="color:#cc0000;">{$LANG.invoicesunpaid}</span>
							{elseif $status eq "Paid"}
								<span class="pull-right" style="color:#779500;">{$LANG.invoicespaid}</span>
							{elseif $status eq "Refunded"}
								<span class="pull-right" style="color:#224488;">{$LANG.invoicesrefunded}</span>
							{elseif $status eq "Cancelled"}
								<span class="pull-right" style="color:#888;">{$LANG.invoicescancelled}</span>
							{elseif $status eq "Collections"}
								<span class="pull-right" style="color:#ffcc00;">{$LANG.invoicescollections}</span>
							{/if}
							</br>
						</div>
						
						{if $paymentSuccess}
							{include file="$template/includes/panel.tpl" type="success" headerTitle=$LANG.success bodyContent=$LANG.invoicepaymentsuccessconfirmation bodyTextCenter=true}
						{elseif $pendingReview}
							{include file="$template/includes/panel.tpl" type="info" headerTitle=$LANG.success bodyContent=$LANG.invoicepaymentpendingreview bodyTextCenter=true}
						{elseif $paymentFailed}
							{include file="$template/includes/panel.tpl" type="danger" headerTitle=$LANG.error bodyContent=$LANG.invoicepaymentfailedconfirmation bodyTextCenter=true}
						{elseif $offlineReview}
							{include file="$template/includes/panel.tpl" type="info" headerTitle=$LANG.success bodyContent=$LANG.invoiceofflinepaid bodyTextCenter=true}
						{/if}

						<div class="panel-body">
							<div class="row">
								<div class="col-sm-6 col-xs-6">
									{if $logo}
										<p><img src="{$logo}" title="{$companyname}" /></p>
									{else}
										<h1 class="logo">{$companyname}</h2>
									{/if}
								</div>
								<div class="col-sm-6 col-xs-6 text-right">
									<h4 class="fw-600 text-right">INVOICE</h4>
									<p class="text-right">{$pagetitle}<br>{$LANG.invoicesdatecreated}: {$date}</p>
									{if $status eq "Unpaid" || $status eq "Draft"}
										<p class="text-right">{$LANG.invoicesdatedue}: {$datedue}</p>
									{/if}	
								</div>
								
								{if $notes}
									{include file="$template/includes/panel.tpl" type="info" headerTitle=$LANG.invoicesnotes bodyContent=$notes}
								{/if}
					
								<div class="col-sm-8 col-xs-7">
									<h4 class="m-t-lg fw-600">{$LANG.invoicespayto}:</h4>
									<address>
										{$payto}
									</address>
								</div>
								<div class="col-sm-4 col-xs-5">
									<h4 class="m-t-lg fw-600">{$LANG.invoicesinvoicedto}:</h4>
									<address>
										{$clientsdetails.firstname}<br/>
										{$clientsdetails.email}
									</address>
								</div>
							</div>
							
						{if $notes}
							{include file="$template/includes/panel.tpl" type="info" headerTitle=$LANG.invoicesnotes bodyContent=$notes}
						{/if}	
							
						{if $manualapplycredit}
							<div class="panel panel-success">
								<div class="panel-heading">
									<h3 class="panel-title"><strong>{$LANG.invoiceaddcreditapply}</strong></h3>
								</div>
								<div class="panel-body">
									<form method="post" action="{$smarty.server.PHP_SELF}?id={$invoiceid}">
										<input type="hidden" name="applycredit" value="true" />
										{$LANG.invoiceaddcreditdesc1} <strong>{$totalcredit}</strong>. {$LANG.invoiceaddcreditdesc2}. {$LANG.invoiceaddcreditamount}:
										<div class="row">
											<div class="col-xs-8 col-xs-offset-2 col-sm-4 col-sm-offset-4">
												<div class="input-group">
													<input type="text" name="creditamount" value="{$creditamount}" class="form-control" />
													<span class="input-group-btn">
														<input type="submit" value="{$LANG.invoiceaddcreditapply}" class="btn btn-success" />
													</span>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						{/if}
						
							<div class="table-container clearfix">
								<table class="table table-list">
									<tr>
										<td><strong>{$LANG.invoicesdescription}</strong></td>
										<td width="20%" class="text-center"><strong>{$LANG.invoicesamount}</strong></td>
									</tr>
									{foreach from=$invoiceitems item=item}
										<tr>
											<td>{$item.description}{if $item.taxed eq "true"} *{/if}</td>
											<td class="text-center">{$item.amount}</td>
										</tr>
									{/foreach}
									{if $taxrate}
										<tr>
											<td><strong>{$taxname} {$taxrate}%</strong></td>
											<td class="text-center">{$tax}</td>
										</tr>
									{/if}
									{if $taxrate2}
										<tr>
											<td><strong>{$taxname2} {$taxrate2}%</strong></td>
											<td class="text-center">{$tax2}</td>
										</tr>
									{/if}
									<tr>
										<td><strong>{$LANG.invoicescredit}</strong></td>
										<td class="text-center">- {$credit}</td>
									</tr>
								</table>
								{if $taxrate}
									<p>* {$LANG.invoicestaxindicator}</p>
								{/if}
							</div>
								
							<div class="row">
								<div class="col-sm-3 col-sm-push-9">
									<p>{$LANG.invoicessubtotal}: {$subtotal}</p>
									<p>{$LANG.invoicestotal}: <span {if $status eq "Paid"}style="color:green;"{else}style="color:red;"{/if}>{$total}</span></p>
									
								</div>
							</div>
							
							<div class="table-container clearfix">
								<table class="table table-list">
									<thead>
										<tr>
											<td class="text-center"><strong>{$LANG.invoicestransdate}</strong></td>
											<td class="text-center"><strong>{$LANG.invoicestransgateway}</strong></td>
											<td class="text-center"><strong>{$LANG.invoicestransid}</strong></td>
											<td class="text-center"><strong>{$LANG.invoicestransamount}</strong></td>
										</tr>
									</thead>
									<tbody>
										{foreach from=$transactions item=transaction}
											<tr>
												<td class="text-center">{$transaction.date}</td>
												<td class="text-center">{$transaction.gateway}</td>
												<td class="text-center">{$transaction.transid}</td>
												<td class="text-center">{$transaction.amount}</td>
											</tr>
										{foreachelse}
											<tr>
												<td class="text-center" colspan="4">{$LANG.invoicestransnonefound}</td>
											</tr>
										{/foreach}
										<tr>
											<td class="text-right" colspan="3"><strong>{$LANG.invoicesbalance}</strong></td>
											<td class="text-center">{$balance}</td>
										</tr>
									</tbody>
								</table>
							</div>
							</br>
							<div class="row">	
								<div class="col-sm-6 col-xs-6">
									<a href="dl.php?type=i&amp;id={$invoiceid}"><button type="button" class="btn btn-md btn-primary"><i class="fa fa-download"></i> {$LANG.invoicesdownload}</button></a>
								</div>
								<div class="col-sm-6 col-xs-6">
									<a href="javascript:window.print()"><button type="button" class="btn btn-md btn-default pull-right"><i class="fa fa-print"></i> {$LANG.print}</button></a>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="container-fluid">
					<div class="panel panel-default">
						<div class="panel-heading bg-white">
							<h4 class="panel-title">{$LANG.paymentmethod}:</h4>
						</div>
						<div class="panel-body">
							<div class="widget-body">
								<span>
									{if $status eq "Unpaid" && $allowchangegateway}
										<form method="post" action="{$smarty.server.PHP_SELF}?id={$invoiceid}">
											<div class="form-group">
												{$gatewaydropdown}
											</div>
										</form>
									{else}
										{$paymentmethod}
									{/if}
								</span>
								{if $status eq "Unpaid" || $status eq "Draft"}
									<div class="payment-btn-container">
										{$paymentbutton}
									</div>
								{/if}
							</div>
						</div>
					</div>
				</div>
			</div>	
		</div>
	</section>

{/if}

{include file="$template/footer.tpl"}

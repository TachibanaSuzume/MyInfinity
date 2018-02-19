<section class="app-content">
	<div class="row">
		<div class="col-md-6">
			<div class="container-fluid">
				<div class="panel panel-default">
					<div class="panel-heading bg-white">
						<h4 class="panel-title pull-left">{$displayTitle}</h4>
						</br>
					</div>
		            <div class="panel-body">
						{if $addfundsdisabled}
						    {include file="$template/includes/alert.tpl" type="error" msg=$LANG.clientareaaddfundsdisabled textcenter=true}
						{elseif $notallowed}
						    {include file="$template/includes/alert.tpl" type="error" msg=$LANG.clientareaaddfundsnotallowed textcenter=true}
						{elseif $errormessage}
						    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage textcenter=true}
						{/if}
						
						{if !$addfundsdisabled}
						
						    <div class="row">
						        <div class="col-sm-12">
				                    <form method="post" action="{$smarty.server.PHP_SELF}?action=addfunds">
				                        <fieldset>
				                            <div class="form-group">
				                                <label for="amount" class="control-label">{$LANG.addfundsamount}:</label>
				                                <input type="text" name="amount" id="amount"
				                                       value="{$amount}" class="form-control" required />
				                            </div>
				                            <div class="form-group">
				                                <label for="paymentmethod" class="control-label">{$LANG.orderpaymentmethod}:</label>
				                                <input type="hidden" name="paymentmethod">
				                                <select name="paymentmethod" id="paymentmethod" class="form-control">
				                                    {foreach from=$gateways item=gateway}
				                                        <option value="{$gateway.sysname}">{$gateway.name}</option>
				                                    {/foreach}
				                                </select>
							                	<p class="text-success ">{$LANG.addfundsnonrefundable}</p>
				                            </div>
				                            <div class="form-group">
				                                <input type="submit" value="{$LANG.addfunds}" class="btn btn-primary btn-lg" />
				                            </div>
				                        </fieldset>
				                    </form>
						        </div>
						    </div>
						{/if}
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="container-fluid">
				<div class="panel panel-default">
					<div class="panel-heading bg-white">
						<h4 class="panel-title pull-left">{$LANG.readmore}</h4>
						</br>
					</div>
		            <div class="panel-body">
		            	<div class="panel">
			                <table class="table table-striped">
			                    <tbody>
			                    <tr>
			                        <td class="textright"><strong>{$LANG.addfundsminimum}</strong></td>
			                        <td>{$minimumamount}</td>
			                    </tr>
			                    <tr>
			                        <td class="textright"><strong>{$LANG.addfundsmaximum}</strong></td>
			                        <td>{$maximumamount}</td>
			                    </tr>
			                    <tr>
			                        <td class="textright"><strong>{$LANG.addfundsmaximumbalance}</strong></td>
			                        <td>{$maximumbalance}</td>
			                    </tr>
			                    </tbody>
			                </table>
			            </div>
		            </div>
		        </div>
		    </div>
		</div>
	</div>
</section>
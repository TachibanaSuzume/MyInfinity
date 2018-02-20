<form method="post" action="clientarea.php?action=masspay" class="form-horizontal">
                                <input type="hidden" name="geninvoice" value="true" />
<section class="app-content">
    <div class="row">
        <div class="col-md-9">
            <div class="container-fluid">
                <div class="panel panel-default">
                    <div class="panel-heading bg-white">
                        <h4 class="panel-title pull-left">{$displayTitle}</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>{$LANG.invoicesdescription}</th>
                                    <th>{$LANG.invoicesamount}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$invoiceitems key=invid item=invoiceitem}
                                    <tr>
                                        <td colspan="2" class="bg-info">
                                            <strong>{$LANG.invoicenumber} {$invid}</strong>
                                            <input type="hidden" name="invoiceids[]" value="{$invid}" />
                                        </td>
                                    </tr>
                                    {foreach from=$invoiceitem item=item}
                                        <tr class="masspay-invoice-detail">
                                            <td>{$item.description}</td>
                                            <td>{$item.amount}</td>
                                        </tr>
                                    {/foreach}
                                {foreachelse}
                                    <tr>
                                        <td colspan="6" align="center">{$LANG.norecordsfound}</td>
                                    </tr>
                                {/foreach}
                                <tr class="masspay-total">
                                    <td class="text-right">{$LANG.invoicessubtotal}:</td>
                                    <td>{$subtotal}</td>
                                </tr>
                                {if $tax}
                                    <tr class="masspay-total">
                                        <td class="text-right">{$taxrate1}% {$taxname1}:</td>
                                        <td>{$tax}</td>
                                    </tr>
                                {/if}
                                {if $tax2}
                                    <tr class="masspay-total">
                                        <td class="text-right">{$taxrate2}% {$taxname2}:</td>
                                        <td>{$tax2}</td>
                                    </tr>
                                {/if}
                                {if $credit}
                                    <tr class="masspay-total">
                                        <td class="text-right">{$LANG.invoicescredit}:</td>
                                        <td>{$credit}</td>
                                    </tr>
                                {/if}
                                {if $partialpayments}
                                    <tr class="masspay-total">
                                        <td class="text-right">{$LANG.invoicespartialpayments}:</td>
                                        <td>{$partialpayments}</td>
                                    </tr>
                                {/if}
                                <tr class="masspay-total">
                                    <td class="text-right">{$LANG.invoicestotaldue}:</td>
                                    <td>{$total}</td>
                                </tr>
                            </tbody>
                        </table>
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
                            <div class="form-group">
                                <select name="paymentmethod" id="paymentmethod" class="form-control">
                                    {foreach from=$gateways item=gateway}
                                        <option value="{$gateway.sysname}">{$gateway.name}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="{$LANG.masspaymakepayment}" class="btn btn-primary btn-block" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</form>    
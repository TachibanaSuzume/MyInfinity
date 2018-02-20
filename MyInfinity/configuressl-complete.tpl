<section class="app-content">
    <div class="row">
        <div class="col-md-12">
            <div class="container-fluid">
                <div class="panel panel-default">
                    <div class="panel-heading bg-white">
                        <h4 class="panel-title pull-left">{$displayTitle}</h4>
                        <br>
                    </div>
                    <div class="panel-body">
                    	{if $errormessage}

						    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage textcenter=true}

						{else}

						    {include file="$template/includes/alert.tpl" type="success" msg=$LANG.sslconfigcomplete textcenter=true}

						    <p>{$LANG.sslconfigcompletedetails}</p>

						    <form method="post" action="clientarea.php?action=productdetails">
						        <input type="hidden" name="id" value="{$serviceid}" />
						        <p><input type="submit" value="{$LANG.invoicesbacktoclientarea}" class="btn btn-default"/></p>
						    </form>
						{/if}
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

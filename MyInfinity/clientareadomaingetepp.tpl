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
                    	<h3>{$LANG.domaingeteppcode}</h3>

						<p>
						    {$LANG.domaingeteppcodeexplanation}
						</p>

						<br />

						{if $error}
						    {include file="$template/includes/alert.tpl" type="error" msg=$LANG.domaingeteppcodefailure|cat:" $error"}
						{elseif $eppcode}
						    {include file="$template/includes/alert.tpl" type="warning" msg=$LANG.domaingeteppcodeis|cat:" $eppcode"}
						{else}
						    {include file="$template/includes/alert.tpl" type="warning" msg=$LANG.domaingeteppcodeemailconfirmation}
						{/if}
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
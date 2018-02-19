<section class="app-content">
    <div class="row">
        <div class="col-md-12">
            <div class="container-fluid">
                <div class="panel panel-default">
                    <div class="panel-heading bg-white">
                        <h4 class="panel-title pull-left">{$displayTitle}</h4>
                        </br>
                    </div>
                    <div class="panel-body">
						{if $successful}

						    {include file="$template/includes/alert.tpl" type="danger" msg=$unsubscribesuccess textcenter=true}

						    <p class="text-center">{$LANG.newsletterremoved}</p>

						{/if}

						{if $errormessage}

						    {include file="$template/includes/alert.tpl" type="danger" msg=$errormessage textcenter=true}

						{/if}

						<p class="text-center">
						    {$LANG.newsletterresubscribe|sprintf2:'<a href="clientarea.php?action=details">':'</a>'}
						</p>
						<br>

						<p class="text-center">
						    <a href="index.php" class="btn btn-default btn-lg">
						        <i class="fa fa-home"></i>
						        {$LANG.returnhome}
						    </a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

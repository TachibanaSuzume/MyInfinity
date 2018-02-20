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
                    	{include file="$template/includes/alert.tpl" type="info" msg=$LANG.creditcard3dsecure textcenter=true}

						<br /><br />

						<div class="text-center">

						    <div id="frmThreeDAuth" class="hidden">
						        {$code}
						    </div>

						    <iframe name="3dauth" height="500" scrolling="auto" src="about:blank" class="submit-3d"></iframe>

						    <br /><br />

						</div>

						<script language="javascript">
						    jQuery("#frmThreeDAuth").find("form:first").attr('target', '3dauth');
						    setTimeout("autoSubmitFormByContainer('frmThreeDAuth')", 1000);
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

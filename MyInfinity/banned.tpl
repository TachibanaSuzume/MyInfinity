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
                    	<div class="alert alert-danger">
						    <strong><i class="fa fa-gavel"></i> {$LANG.bannedyourip} {$ip} {$LANG.bannedhasbeenbanned}</strong>
						    <ul>
						        <li>{$LANG.bannedbanreason}: <strong>{$reason}</strong></li>
						        <li>{$LANG.bannedbanexpires}: {$expires}</li>
						    </ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

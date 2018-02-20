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
						{include file="$template/includes/alert.tpl" type="success" msg=$LANG.logoutsuccessful textcenter=true}
				        <p class="text-center">
				            <a href="index.php" class="btn btn-default">{$LANG.logoutcontinuetext}</a>
				        </p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
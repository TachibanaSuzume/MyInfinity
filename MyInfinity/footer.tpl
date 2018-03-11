{if $formaction == 'dologin.php' || $filename == 'pwreset' || $filename == 'register' || $filename == 'login' || $filename == 'clientarea' && !$loggedin}

{else}
	  </div>
	  <div class="wrap p-t-0">
		<footer class="app-footer">
		  <div class="clearfix">
			<div class="copyright pull-left">Copyright &copy; {$companyname} All Rights Reserved</div>
		  </div>
		</footer>
	  </div>
	</main>
	<div id="side-panel" class="side-panel">
		<div class="panel-header">
			<h4 class="panel-title">{$LANG.language}</h4>
		</div>
		<div class="scrollable-container">
			<div class="media-group">
				{foreach $locales as $locale}
			  		<a href="{$currentpagelinkback} language={$locale.language}" class="media-group-item">
					  <div class="media">
						<div class="media-body">
						  <small class="media-meta">{$locale.localisedName}</small>
						</div>
					  </div>
					</a>
	            {/foreach}
			</div>
		</div><!-- .scrollable-container -->
	</div><!-- /#side-panel -->

	<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content panel panel-primary">
	            <div class="modal-header panel-heading">
	                <button type="button" class="close" data-dismiss="modal">
	                    <span aria-hidden="true">&times;</span>
	                    <span class="sr-only">Close</span>
	                </button>
	                <h4 class="modal-title">Title</h4>
	            </div>
	            <div class="modal-body panel-body">
	                Loading...
	            </div>
	            <div class="modal-footer panel-footer">
	                <div class="pull-left loader">
	                    <i class="fa fa-circle-o-notch fa-spin"></i> Loading...
	                </div>
	                <button type="button" class="btn btn-default" data-dismiss="modal">
	                    Close
	                </button>
	                <button type="button" class="btn btn-primary modal-submit">
	                    Submit
	                </button>
	            </div>
	        </div>
	    </div>
	</div>

	<script src="{$WEB_ROOT}/templates/{$template}/assets/libs/bower/jquery-slimscroll/jquery.slimscroll.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/assets/libs/bower/perfect-scrollbar/js/perfect-scrollbar.jquery.js"></script>

	<script src="{$WEB_ROOT}/templates/{$template}/assets/js/library.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/assets/js/plugins.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/assets/js/app.min.js"></script>
	
{/if}

{$footeroutput}
</body>
</html>

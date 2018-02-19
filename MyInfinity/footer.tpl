{if $inShoppingCart}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
{/if}
{if $formaction == 'dologin.php' || $filename == 'pwreset' || $filename == 'register' || $filename == 'login' || $filename == 'clientarea' && !$loggedin}

{else}
	  <div class="wrap p-t-0">
		<footer class="app-footer">
		  <div class="clearfix">
			<div class="copyright pull-left">Copyright &copy; {$companyname} All Rights Reserved</div>
		  </div>
		</footer>
	  </div>
	</main>

	<!-- build:js {$WEB_ROOT}/templates/{$template}/assets/js/core.min.js -->
	<script src="{$WEB_ROOT}/templates/{$template}/assets/libs/bower/jquery-slimscroll/jquery.slimscroll.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/assets/libs/bower/perfect-scrollbar/js/perfect-scrollbar.jquery.js"></script>
	<!-- endbuild -->

	<!-- build:js {$WEB_ROOT}/templates/{$template}/assets/js/app.min.js -->
	<script src="{$WEB_ROOT}/templates/{$template}/assets/js/library.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/assets/js/plugins.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/assets/js/app.min.js"></script>
	<!-- endbuild -->
{/if}
</body>
</html>

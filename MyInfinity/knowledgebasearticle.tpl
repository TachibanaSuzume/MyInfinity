<section class="app-content">
    <div class="row">
        <div class="col-md-12">
            <div class="container-fluid">
                <div class="panel panel-default">
                    <div class="panel-heading bg-white">
                        <h4 class="panel-title pull-left">{$kbarticle.title} </h4>
                        <span class="pull-right" style="margin-top: -10px">
                        	<a href="#" class="btn btn-link btn-print" onclick="window.print();return false"><i class="fa fa-print"></i></a>
                        </span>
                   		<br>
                    </div>
                    <div class="panel-body">
                    	<div class="row">
                    		<div class="col-md-8">
								<p>{$kbarticle.text}</p>
							</div>
                    		<div class="col-md-4 hidden-print">
								<form action="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}" method="post">
							        <input type="hidden" name="useful" value="vote">
							        <div style="margin-bottom: 10px;">
							        {if $kbarticle.voted}{$LANG.knowledgebaserating}{else}{$LANG.knowledgebasehelpful}{/if}
							        </div>
							        {if $kbarticle.voted}
					   		 			{include file="$template/includes/alert.tpl" type="success" msg="{lang key="knowledgebaseArticleRatingThanks"}" textcenter=true}
							            <p>{$kbarticle.useful} {$LANG.knowledgebaseratingtext} ({$kbarticle.votes} {$LANG.knowledgebasevotes})</p>
							        {else}
							            <button type="submit" name="vote" value="yes" class="btn btn-space btn-primary"><i class="fa fa-thumbs-o-up"></i> {$LANG.knowledgebaseyes}</button>
							            <button type="submit" name="vote" value="no" class="btn btn-space btn-info"><i class="fa fa-thumbs-o-down"></i> {$LANG.knowledgebaseno}</button>
							        {/if}
							    </form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--
		<div class="col-md-3">
			<div class="container-fluid">
                <div class="panel panel-default">
                    <div class="panel-heading bg-white">
                        <h4 class="panel-title pull-left">{$LANG.knowledgebaserelated}</h4>
                        </br>
                    </div>
                    <div class="panel-body">
					{if $kbarticles}
						<ul class="navbar-nav nav-pills nav-stacked">
				            {foreach key=num item=kbarticle from=$kbarticles}
		                    <li class="nav-item">
		                    	<a class="nav-link" href="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}">
		                        	{$kbarticle.title}
		                    	</a>
		                    </li>
				            {/foreach}
		            	</ul>
		            {else}
					{/if}
				</div>
			</div>
		</div>
		-->
	</div>
</section>

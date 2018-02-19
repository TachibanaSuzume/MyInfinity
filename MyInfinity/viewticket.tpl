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
                        <div class="row">
							{if !$invalidTicketId}
							    <div class="panel panel-ticket">
							        <div class="panel-body">
										{if $invalidTicketId}
										
										    {include file="$template/includes/alert.tpl" type="danger" title=$LANG.thereisaproblem msg=$LANG.supportticketinvalid textcenter=true}
										
										{else}
										
										    {if $closedticket}
										        {include file="$template/includes/alert.tpl" type="warning" msg=$LANG.supportticketclosedmsg textcenter=true}
										    {/if}
										
										    {if $errormessage}
										        {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
										    {/if}
										
										{/if}
										<style>

											

										</style>
										<div class="table-responsive">
											<table class="table mail-list">
												<tr>
													<td>
										    		{foreach from=$descreplies key=num item=reply}
														<div class="mail-item">
															<table class="mail-container">
																<tr>
																	<td class="mail-left">
																		<div class="avatar avatar-lg avatar-circle">
																			<img src="//cn.gravatar.com/avatar/{$reply.email|md5}?s=100&d={$systemurl}templates/{$template}/assets/images/default.jpg" alt="{$reply.name}">
																		</div>
																	</td>
																	<td class="mail-center">
																		<div class="mail-item-header">
																			<h4 class="mail-item-title"><a href="mail-view.html" class="title-color">{$reply.name}</a></h4>
																			{if $reply.admin}
														                        <span class="label label-success">{$LANG.supportticketsstaff}</span>
														                    {elseif $reply.contactid}
														                        {$LANG.supportticketscontact}
														                    {elseif $reply.userid}
														                    	<span class="label label-primary">{$LANG.supportticketsclient}</span>
														                    {else}
														                        {$reply.email}
														                    {/if}
																		</div>
																		<p>{$reply.message}</p>
																		{if $reply.attachments}
																		<hr>
															                <div class="attachments">
															                    <strong>{$LANG.supportticketsticketattachments} ({$reply.attachments|count})</strong>
															                    <ul>
															                        {foreach from=$reply.attachments key=num item=attachment}
															                            <li><i class="fa fa-file-o"></i> <a href="dl.php?type={if $reply.id}ar&id={$reply.id}{else}a&id={$id}{/if}&i={$num}">{$attachment}</a></li>
															                        {/foreach}
															                    </ul>
															                </div>
															            {/if}
																	</td>
																	<td class="mail-right">
																		<p class="mail-item-date">{$reply.date}</p>
																	</td>
																</tr>
															</table>
															{if $reply.id && $reply.admin && $ratingenabled}
										                    	<br>
										                        {if $reply.rating}
										                                {for $rating=1 to 5}
										                                    <i class="fa fa-star"></i>
										                                {/for}
										                        {else}
										                        <div class="ticket-reply">
										                            <div class="rating" ticketid="{$tid}" ticketkey="{$c}" ticketreplyid="{$reply.id}">
										                                <span class="star" rate="5"></span>
										                                <span class="star" rate="4"></span>
										                                <span class="star" rate="3"></span>
										                                <span class="star" rate="2"></span>
										                                <span class="star" rate="1"></span>
										                            </div>
										                            <br>
										                            <br>
										                        </div>
										                        {/if}
													        {else}
													        	<br>
													        	<i class="fa fa-star"></i>
													        	<i class="fa fa-star"></i>
													        	<i class="fa fa-star"></i>
													        	<i class="fa fa-star"></i>
													        	<i class="fa fa-star"></i>
										                	{/if}
														</div>	
												    {/foreach}
												</td>
											</tr>
										</table>
									</div>

							            <div id="ticket-message" class="ticket-message">
							                <br>
							                {if $errormessage}
							                    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
							                {/if}
							                <form method="post" action="{$smarty.server.PHP_SELF}?tid={$tid}&amp;c={$c}&amp;postreply=true" enctype="multipart/form-data" role="form" id="frmReply">
							                    {if !$loggedin}
							                        <div class="row">
							                            <div class="form-group col-sm-6">
							                                <label for="inputName">{$LANG.supportticketsclientname}</label>
							                                <input type="text" name="replyname" id="inputName" value="{$clientname}" class="form-control" {if $loggedin}disabled="disabled"{/if}/>
							                            </div>
							                            <div class="form-group col-sm-6">
							                                <label for="inputEmail">{$LANG.supportticketsclientemail}</label>
							                                <input type="email" name="replyemail" id="inputEmail" value="{$email}" class="form-control" {if $loggedin}disabled="disabled"{/if}/>
							                            </div>
							                        </div>
							                    {else}
							                        <input type="hidden" name="name" id="inputName" value="{$clientname}" />
							                        <input type="hidden" name="email" id="inputEmail" value="{$email}" />
							                    {/if}
							                    <div class="message-textarea">
							                        <textarea name="replymessage" id="inputMessage" rows="12" class="form-control markdown-editor" data-auto-save-name="client_ticket_reply_{$tid}">{$replymessage}</textarea>
							                    </div>
							                    <br>
							                    <div class="message-actions">
									                <div class="message-attachments">
									                    <div class="row form-group">
													        <div class="col-sm-6">
													            <input type="file" name="attachments[]" id="inputAttachments" class="form-control" />
													            <div id="fileUploadsContainer"></div>
													        </div>
													        <div class="col-sm-6">
													            <button type="button" class="add-file-input btn btn-sm btn-default btn-outline" onclick="extraTicketAttachment()">
													                <i class="zmdi zmdi-plus"></i> {$LANG.addmore}
													            </button>
													        </div>
													        <div class="col-xs-12 ticket-attachments-message text-muted">
													            {$LANG.supportticketsallowedextensions}: {$allowedfiletypes}
													        </div>
													    </div>
									                </div>
											        <button type="submit" id="openTicketSubmit" class="btn btn-success">
											        	<span>{$LANG.supportticketsticketsubmit}</span>
											        </button>
									            </div>
							                </form>
							            </div>
							        </div>
							    </div>
							{/if}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<div class="modal whmcs-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content panel panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">×</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">Title</h4>
            </div>
            <div class="modal-body panel-body"></div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader" style="display: block;">
                    <i class="fa fa-circle-o-notch fa-spin"></i> Loading...
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
                <button type="button" class="btn btn-primary modal-submit" style="display: none;">Submit</button>
            </div>
        </div>
    </div>
</div>
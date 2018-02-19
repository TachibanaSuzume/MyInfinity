<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>{$LANG.clientareaemails} - {$companyname}</title>

    {include file="$template/includes/head.tpl"}

</head>
<body>
<section class="app-content">
    <div class="row">
        <div class="col-md-12">
            <div class="container-fluid">
                <div class="panel panel-default">
                    <div class="panel-heading bg-white">
                        <h2><i class='fa fa-envelope-o'>&nbsp;</i>{$subject}</h2>
                        </br>
                    </div>
                    <div class="panel-body">
                        {$message}
                    </div>
                    <div class="panel-footer">
                        <p class="text-center">
                            <input type="button" value="{$LANG.closewindow}" class="btn btn-primary" onclick="window.close()" />
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>

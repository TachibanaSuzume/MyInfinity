$(function () {
    "use strict";
	
    //Clipboard
    var clipboard = new Clipboard('.input-copy .btn');
    clipboard.on('success', function (e) {
        $('.input-copy .btn span').addClass('not-visible');
        $('.input-copy .check-animate').removeClass('hidden');
        e.clearSelection();
    });
    
    
});

function deleteContact(e, t) {
    confirm(e) && (window.location = "clientarea.php?action=contacts&delete=true&id=" + t + "&token=" + csrfToken)
}

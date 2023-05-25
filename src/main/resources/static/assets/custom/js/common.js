function showAlertMessage(type, data) {
    var msg = `<div class="alert alert-` + type + ` alert-wth-icon alert-dismissible fade show" role="alert">
                            <span class="alert-icon-wrap"><i class="zmdi zmdi-close-circle"></i></span> ` + data + `
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">x</span>
                            </button>
                        </div>`;
    $("#msgFrmAjax").html(msg);

}
$(function() {
    $('#accept-tos').click(function() {
        if ($("#accept-tos").prop("checked")) {
            $("#submit-button").removeClass("disabled");
        } else {
            $("#submit-button").addClass("disabled")
        }
    });
});
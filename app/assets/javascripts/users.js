$(function() {
    $('#accept-tos').click(function() {
        if ($("#accept-tos").prop("checked")) {
            $("#submit-button").removeClass("disabled");
        } else {
            $("#submit-button").addClass("disabled");
        }
    });
    $('.user-profile').click(function(e) {
        user_id = $(this).data("id");
        $("#user-" + user_id).modal();
        e.preventDefault();
    });
});
$(function() {
    var options = decodeURIComponent(window.location.search.slice(1))
        .split('&')
        .reduce(function _reduce (/*Object*/ a, /*String*/ b) {
            b = b.split('=');
            a[b[0]] = b[1];
            return a;
        }, {});
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
    $("#see-guest-guidelines").click(function(e) {
        $("#terms-modal").modal();
        e.preventDefault();
    });
    if (options['user_id']) {
        $('#users-index').find("[data-id='" + options['user_id'] + "']").trigger("click");
    }

});
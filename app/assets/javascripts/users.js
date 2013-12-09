/* Takes a JS date, formats as '2013-11-22' */
function toSqlDate(d) {
    var curr_date = ("0" + d.getDate()).slice(-2);
    var curr_month = d.getMonth() + 1; //Months are zero based
    var curr_year = d.getFullYear();
    return curr_year + "-" + curr_month + "-" + curr_date
}

/* Show the "note" field only if the user is at the end of their stay. */
function show_note() {
    var departureDate = $('#user_departure_date').val()
    var today = toSqlDate(new Date)
    if (departureDate && departureDate <= today) {
        $('#user-note-section').removeClass('hide');
    } else {
        $('#user-note-section').addClass('hide');
    }
}

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
    show_note();
    $("#user_departure_date").blur(function() {
        show_note();
    });
});
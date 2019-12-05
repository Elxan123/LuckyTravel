$(document).ready(function () {

    $.ajax({
        type: "POST",
        url: $(".c_refresh").data("url"),
        // data: {my_data: $(".c_refresh").data("order")},

        beforeSend: function() {
            $('.c_spinner').show();
        },

        complete: function() {
            $('.c_spinner').hide();
        },

        success: function(data) {
            $(".c_refresh").html(data);
        },
        error: function() {
            alert('Xəta baş verdi');
        }
    });

});

$(".c_set_order_price").on("click", function () {

    $.ajax({
        type: "POST",
        url: $(this).data("url"),
        data: {order_price: $(this).data("order")},

        beforeSend: function() {
            $('.c_spinner').show();
        },

        complete: function() {
            $('.c_spinner').hide();
        },

        success: function(data) {
            $(".c_refresh").html(data);
        },
        error: function() {
            alert('Xəta baş verdi');
        }
    });

});

$(".c_set_order_popularity").on("click",function () {

    $.ajax({
        type: "POST",
        url: $(this).data("url"),
        data: {order_popularity: $(this).data("order")},

        beforeSend: function() {
            $('.c_spinner').show();
        },

        complete: function() {
            $('.c_spinner').hide();
        },

        success: function(data) {
            $(".c_refresh").html(data);
        },
        error: function() {
            alert('Xəta baş verdi');
        }
    });

});

$(".c_price_range").on("click", function () {

    $.ajax({
        type: "POST",
        url: $(this).data("url"),
        data: {
            min_price: $(".amount-start").val(), max_price: $(".amount-end").val()
        },

        beforeSend: function() {
            $('.c_spinner').show();
        },

        complete: function() {
            $('.c_spinner').hide();
        },

        success: function(data) {
            $(".c_refresh").html(data);
        },
        error: function() {
            alert('Xəta baş verdi');
        }
    });

});

$(".c_search_submit").on("click", function () {

    $.ajax({
        type: "POST",
        url: $(this).data("url"),
        data: {
            search_value: $(".c_search_value").val(), date_value: $(".c_date_value").val()
        },

        beforeSend: function() {
            $('.c_spinner').show();
        },

        complete: function() {
            $('.c_spinner').hide();
        },

        success: function(data) {
            $(".c_refresh").html(data);
        },
        error: function() {
            alert('Xəta baş verdi');
        }
    });

})


$('[data-toggle="tooltip"]').tooltip();


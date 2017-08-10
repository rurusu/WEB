$(function () {

    $(window).scroll(function () {
        if ($(window).scrollTop() > 90) {
            $("#goTop").fadeIn(120);
        }
        else {
            $("#goTop").fadeOut(120);
        }
    });

    $("#goTop").click(function () {
        $("html,body").animate({ scrollTop: 0 }, 500);
        return false;
    });
});
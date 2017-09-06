$(function () {

    $(window).scroll(function () {
        if ($(window).scrollTop() > 90) {
            $("#goTop").fadeIn(130);
        }
        else {
            $("#goTop").fadeOut(130);
        }
    });

    $("#goTop").click(function () {
        $("html,body").animate({ scrollTop: 0 }, 100);
        return false;
    });
});
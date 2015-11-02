var index = 1;
$(function() {
    setInterval(nextSlider, 3000);


    //前一张
    $("#prev").click(function() {
        if (index < 1) {
            index = 1;
        }
        index = index - 1;
        $(".slider-thumbnail").removeClass("current");
        $(".slider-thumbnail").eq(index).addClass("current");
        $(".slider-thumbnail").find('.bg-img').css({
            "-webkit-transform": "none",
            "transform": "none"
        });
        $(".slider-thumbnail").eq(index + 1).find('.bg-img').eq(0)
            .css({
                "-webkit-transform": "translate3d(0px, 150px, 0px)",
                "transform": "translate3d(0px, 150px, 0px)"
            });
        $(".slider-thumbnail").eq(index + 1).find('.bg-img').eq(1)
            .css({
                "-webkit-transform": "translate3d(-250px, 0px, 0px)",
                "transform": "translate3d(-250px, 0px, 0px)"
            });
        $(".slider-thumbnail").eq(index + 1).find('.bg-img').eq(2)
            .css({
                "-webkit-transform": "translate3d(250px, 0px, 0px)",
                "transform": "translate3d(250px, 0px, 0px)"
            });
        $(".slider-thumbnail").eq(index + 1).find('.bg-img').eq(3)
            .css({
                "-webkit-transform": "translate3d(0px, -150px, 0px)",
                "transform": "translate3d(0px, -150px, 0px)"
            });
        /*	$(".slider-thumbnail").eq(index).addClass("current").find('.bg-img')
        	.css({"-webkit-transform": "translate3d(0px, -150px, 0px)","transform":"translate3d(0px, -150px, 0px)"});*/


        $("#slider .slider-right .slider-content").removeClass("current");
        $("#slider .slider-right .slider-content").eq(index).addClass("current");
    });


    //下一张
    $("#next").click(function() {
        if (index > 3) {
            index = 3;
        }
        index = index + 1;
        $(".slider-thumbnail").removeClass("current");
        $(".slider-thumbnail").eq(index).addClass("current");
        $(".slider-thumbnail").find('.bg-img').css({
            "-webkit-transform": "none",
            "transform": "none"
        });
        $(".slider-thumbnail").eq(index + 1).find('.bg-img').eq(0)
            .css({
                "-webkit-transform": "translate3d(0px, 150px, 0px)",
                "transform": "translate3d(0px, 150px, 0px)"
            });
        $(".slider-thumbnail").eq(index + 1).find('.bg-img').eq(1)
            .css({
                "-webkit-transform": "translate3d(-250px, 0px, 0px)",
                "transform": "translate3d(-250px, 0px, 0px)"
            });
        $(".slider-thumbnail").eq(index + 1).find('.bg-img').eq(2)
            .css({
                "-webkit-transform": "translate3d(250px, 0px, 0px)",
                "transform": "translate3d(250px, 0px, 0px)"
            });
        $(".slider-thumbnail").eq(index + 1).find('.bg-img').eq(3)
            .css({
                "-webkit-transform": "translate3d(0px, -150px, 0px)",
                "transform": "translate3d(0px, -150px, 0px)"
            });
        /*	$(".slider-thumbnail").eq(index).addClass("current").find('.bg-img')
        	.css({"-webkit-transform": "translate3d(0px, -150px, 0px)","transform":"translate3d(0px, -150px, 0px)"});*/


        $("#slider .slider-right .slider-content").removeClass("current");
        $("#slider .slider-right .slider-content").eq(index).addClass("current");
    });




})


//轮播
function nextSlider() {

    if (index > 1) {
        index = 0;
    }

    $(".slider-thumbnail").removeClass("current");
    $(".slider-thumbnail").eq(index).addClass("current");
    $(".slider-thumbnail").find('.bg-img').css({
        "-webkit-transform": "none",
        "transform": "none"
    });
    $(".slider-thumbnail").eq(index + 1).find('.bg-img').eq(0)
        .css({
            "-webkit-transform": "translate3d(0px, 150px, 0px)",
            "transform": "translate3d(0px, 150px, 0px)"
        });
    $(".slider-thumbnail").eq(index + 1).find('.bg-img').eq(1)
        .css({
            "-webkit-transform": "translate3d(-250px, 0px, 0px)",
            "transform": "translate3d(-250px, 0px, 0px)"
        });
    $(".slider-thumbnail").eq(index + 1).find('.bg-img').eq(2)
        .css({
            "-webkit-transform": "translate3d(250px, 0px, 0px)",
            "transform": "translate3d(250px, 0px, 0px)"
        });
    $(".slider-thumbnail").eq(index + 1).find('.bg-img').eq(3)
        .css({
            "-webkit-transform": "translate3d(0px, -150px, 0px)",
            "transform": "translate3d(0px, -150px, 0px)"
        });
    /*	$(".slider-thumbnail").eq(index).addClass("current").find('.bg-img')
    	.css({"-webkit-transform": "translate3d(0px, -150px, 0px)","transform":"translate3d(0px, -150px, 0px)"});*/


    $("#slider .slider-right .slider-content").removeClass("current");
    $("#slider .slider-right .slider-content").eq(index).addClass("current");
    index++;
}


//-webkit-transform: translate3d(0px, -150px, 0px); transform: translate3d(0px, -150px, 0px);

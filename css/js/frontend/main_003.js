

jQuery(function($) {
    var config = {
        startPos: 266,
        element: '#header',
        newBGClass: 'header-scroll'
    }

    $( window ).scroll(function() {
        var $pos = $(this).scrollTop();

        if($pos >= config.startPos) {

            $(config.element).addClass(config.newBGClass);
        } else {
            $(config.element).removeClass(config.newBGClass);
        }

    });

});

// X3
jQuery(function($){

    $(window).load(function(){
        $(window).resize();
    });
    
    // === Navigation Drop Animation
    $('nav li').on('hover',function(){
        if ($(this).find('.sub-menu')){
            $(this).find('.sub-menu').slideDown(300);
        }
    });
    $('nav li').on('mouseleave',function(){
        if ($(this).find('.sub-menu')){
            $(this).find('.sub-menu').stop().slideUp(300);
        }
    });
    
    // === Homepage Images
    $('.homepage-slider img, .main-image img').hide();
    var hImgResize = function(){
        $('.homepage-slider img, .main-image img').each(function(){
            var hImg = $(this);
            if (hImg.height() / hImg.width() < $(window).height() / $(window).width()){
                hImg.height('100%').width('auto').css({marginLeft:0 - (hImg.width() - $(window).width()) / 2, marginTop:0 - (hImg.height() - $(window).height()) / 2});
            }
            else
                hImg.height('auto').width('100%').css({marginLeft:0 - (hImg.width() - $(window).width()) / 2, marginTop:0 - (hImg.height() - $(window).height()) / 2});
        });
    };
    $(window).resize(function(){
        hImgResize();
        $('.homepage-slider img, .main-image img').fadeIn('1000');
    });
    
    // === Homepage slider
    $.fn.hSlider = function(hParam){
        if (hParam.slideshow == false){
            return false
        }
        else{
            $(this).addClass('hSlider');
            var hSlide = $(this).find('li'),
                hMoveable = true,
                hNext = $('.hSwitcher .next'),
                hPrev = $('.hSwitcher .prev');
            hSlide.first().addClass('visible');
            function hMove(){
                if (hMoveable == true){
                    var hSlideVisible = hSlide.filter('.visible');
                    hSlideVisible.addClass('active');
                    if (hSlideVisible.index() < hSlide.last().index()){
                        hSlideVisible.next().addClass('visible').hide().fadeIn(hParam.speed || 500);
                    }
                    else{
                        hSlide.first().addClass('visible').hide().addClass('zindex').fadeIn(hParam.speed || 500);
                    }
                    setTimeout(function(){
                        var hSlideActive = hSlide.filter('.active');
                        hSlideActive.removeClass('visible').removeClass('active');
                        hMoveable = true;
                        hSlide.filter('.zindex').removeClass('zindex');
                    },hParam.speed || 500);
                }
                hMoveable = false;
                e.preventDefault();
            }
            setInterval(function(){
                hMove();
            },hParam.interval || 5000);
            hNext.click(function(e){
                hMove();
            });
            hPrev.click(function(e){
                if (hMoveable == true){
                    var hSlideVisible = hSlide.filter('.visible');
                    hSlideVisible.addClass('active');
                    if (hSlideVisible.index() > hSlide.first().index()){
                        hSlideVisible.prev().addClass('visible').hide().addClass('zindex').fadeIn(hParam.speed || 500);
                    }
                    else{
                        hSlide.last().addClass('visible').hide().addClass('zindex').fadeIn(hParam.speed || 500);
                    }
                    setTimeout(function(){
                        var hSlideActive = hSlide.filter('.active');
                        hSlideActive.removeClass('visible').removeClass('active');
                        hSlide.filter('.zindex').removeClass('zindex');
                        hMoveable = true;
                    },hParam.speed || 500);
                }
                hMoveable = false;
                e.preventDefault();
            });
        }
    }
    if ($('.homepage-slider ul > *').children().length > 1){
        $('.homepage-slider ul.slides').hSlider({
            speed : 500,
            interval : 5000
        });
    }

    // === Page grid
    $('.page-grid-item:nth-child(even)').addClass('odd');
    $.fn.setHeight = function(setCount) {
        for(var i = 0; i < this.length; i+=setCount) {
            var curSet = this.slice(i, i+setCount),
                height = 0;

            curSet.each(function() {
                height = Math.max(height, $(this).height());
            }).css('height', height);
        }
        return this;
    };
    $(window).resize(function(){
        $('.page-grid-item, .careers-list li, .plan-list-holder li').height('auto');
        $('.page-grid-item, .careers-list li').setHeight(2);
        $('.plan-list-holder li').setHeight(3);
    });
    
    // === Milestones/Apparel
    $('.milestones-list li:nth-child(even), .apparel-totals-list li:nth-child(even), .apparel-links-list li:nth-child(even)').addClass('odd');
    $(window).load(function(){
        $('.milestones-divider, .apparel-totals-divider').each(function(){
            var divider = $(this),
                dividerList = divider.prev().children();
            if (!divider){
                return false;
            }
            else{
                divider.height(divider.prev().height() - dividerList.first().outerHeight() / 2 - dividerList.last().outerHeight() / 2)
                    .css('top',dividerList.first().outerHeight() / 2 + 1);
            }
        });
    });
    $('.apparel-totals-list li .count').each(function(){
        $(this).css({marginTop:0 - $(this).height() / 2 + 15, marginLeft:0 - $(this).width() / 2});
    });
    

    if ($('body').hasClass('page-template-banking-php') || $('body').hasClass('')){
        $('.column-grey-box img').each(function(){
            if ($(this).parent().attr('url') != false){
                $(this).parent().addClass('grey-fullsize');
            }
        });
        $('.grey-fullsize').width($('.grey-fullsize').closest('.column-grey-box').outerWidth());
        $(window).resize(function(){
            $('.grey-fullsize').width($('.grey-fullsize').closest('.column-grey-box').outerWidth());
        });
    }
    
    $('.contact-page .page-content:nth-child(odd)').addClass('odd');
    
});

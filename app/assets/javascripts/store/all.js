// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.tabs

//= require store/spree_core
//= require store/spree_promo

//= require jquery.rating
//= require store/jquery.jqzoom-core
//= require store/spree_product_zoom

$(document).ready(function() {

	$('.jqzoom').jqzoom({
            zoomType: 'standard',
            lens:true,
            preloadImages: false,
        alwaysOn:false,
        zoomWidth: 300,
        zoomHeight: 300


        });

 	$('.jqzoom').bind("click", function(e){
      $.fancybox( {href : $(this).attr('href'), title : $(this).data('title')} );

      e.preventDefault();
      return false;
    });
  $('#a-wrap').hover(function() {

      $('#a-hover').stop(true,true).fadeTo(500,0.9);

    },function() {

      $('#a-hover').stop(true,true).fadeTo(500,0.0);
    });


  $('#b-wrap').hover(function() {

      $('#b-hover').stop(true,true).fadeTo(500,0.9);

    },function() {

      $('#b-hover').stop(true,true).fadeTo(500,0.0);

    });

  $('#c-wrap').hover(function() {

      $('#c-hover').stop(true,true).fadeTo(500,0.9);

    },function() {

      $('#c-hover').stop(true,true).fadeTo(500,0.0);

    });

});
//= require jquery.nivo.slider.pack.js

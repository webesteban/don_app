// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-1.12.0.min.js
//= require moment.min.js
//= require bootstrap.min.js
//= require bootstrap-datetimepicker.min.js
//= require plugins.js
//= require app.js
//= require modernizr-respond.min.js
//= require jquery.flexslider-min.js
//= require baguetteBox.js
//= require jPages.js
//= require_tree .

$(function(){
  TablesDatatables.init();
})

function goBack(){
  window.history.back();
}

function copy_to_clipboard(text){
    window.prompt("Presiona Control + C para copiar el text", text);
}

jQuery(window).load(function(){ 
	jQuery('.slider_wrapper').flexslider({
	      animation: "slide",
	      animationLoop: true,
	      itemMargin: 0,
	      minItems: 1,
	      maxItems: 1,
	      controlNav: false,
	      smoothHeight: true,
	      animationSpeed: 500,
	      slideshow: true,
	      slideshowSpeed: 5000,



	      	});
});
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bxslider
//= require jquery_ujs
//= require raphael
//= require morris
//= require default
//= require jquery.contextMenu
//= require category
//= require rails.validations
//= require sponsors





$(document).ready(function() {
    return $(".bxslider").bxSlider({
        auto: true,
        autoControls: true
    });
});

$(document).ready(function() {

    Morris.Donut({
        element: 'chart',
        data: $("#chart").data('catagories')
    });
});

$(document).ready(function() {
    Morris.Bar({
        element: 'bar',
        data: $("#chart").data('catagories'),

        xkey: 'label',
        ykeys: ['value'],
        labels: ['No. of Products: '],
        xLabelAngle: 60
    });
});
jQuery.ready(function() {

    Morris.Donut({
        element: 'chart',
        data: $("#chart").data('catagories')
    });
});

jQuery.ready(function() {
    Morris.Bar({
        element: 'bar',
        data: $("#chart").data('catagories'),

        xkey: 'label',
        ykeys: ['value'],
        labels: ['No. of Products: '],
        xLabelAngle: 60
    });
});
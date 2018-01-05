/**
 * Created by lidc on 17-8-22.
 */
function set_ajax(obj) {
    var url = window.location.href;
    url = url.match(/[1-9]\d{13}/)[0];

    $('body').on('click', obj.elm, function () {
        $.ajax({
            url: '/clickCount',
            type: 'post',
            data: {order_id: url, position: obj.position},
            dataType: 'json',
            success: function() {

            },
        })
        if(obj.fn) {
            obj.fn()
        }
        if(obj.href) {
            window.location.href = obj.href;
        }
    });
}
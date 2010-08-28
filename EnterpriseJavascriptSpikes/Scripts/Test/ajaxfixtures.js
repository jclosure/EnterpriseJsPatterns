
var AjaxFixtures = function () {

    options = {
        dataType: 'json'
    };

    return {
        "/some/json": function (options) {

            var opts = $.extend({}, options, {
                url: '/some/json',
                dataType: 'json'
            });

            $.mockjax(opts);
        },
        "mock": function (key, options) {
            var opts = $.extend({}, this.options, options);
            //opts
            this[key](opts);
        },
        "init": function () {
            this['/some/json']();
            return this;
        }
    };
};

var AjaxFixtures = function () {

    options = {
        dataType: 'json'
    };

    return {
        "template": function (options) {

            

            $.mockjax(options);
            return this;
        },
        "mock": function (key, options) {
            var opts = $.extend({}, this.options, options);
            //opts
            if (!!!opts.url)
                opts.url = key;
            //store the executed method - fluent
            this[key] = this.template(opts);
            //this[key](opts);
            return this;
        },
        //custon section begin
        "some/other/url?message=foo": function (options) {
            var opts = $.extend({}, options, {
                url: 'some/other/url?message=foo'
            });

            $.mockjax(options);
        },
        //custom section end
        "init": function () {
            //this['/some/json']();
            return this;
        }
    };
};
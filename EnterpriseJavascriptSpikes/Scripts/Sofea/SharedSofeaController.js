//note: name this according to what it supports
var sofeaController = new function () {
    var controller = this;
    //set defaults
    var opts = {};

    //BEGIN HELPERS


    //END HELPERS


    //BEGIN PUBLIC API

    controller.init = function init(options) {
        if (!!options)
            opts = $.extend(opts, options);
        loadDefaults();
    };

    controller.loadDefaults = function loadDefaults() {
        switch (opts.mode) {
            case 'single':
                alert("single");
                break;
            case 'multiple':
                alert("multiple");
                break;
            default:
                alert("default");
                break;
        }
    };
    //END PUBLIC API



};
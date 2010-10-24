//note: name this according to what it supports
var SofeaController = function () {
    var controller = this;
    //set defaults
    var opts = {
        mode: 'single'
    };

    //BEGIN HELPERS


    //END HELPERS


    //BEGIN PUBLIC API

    controller.init = function init(options) {
        if (!!options)
            opts = $.extend(opts, options);
        return loadDefaults();
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
        return controller;
    };
    //END PUBLIC API

    return controller;
};
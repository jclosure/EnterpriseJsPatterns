(function () {

    ///
    //define our objects
    ///

    /*
    Object Person
    */
    var Person = {

        init: function (options, elem) {
            this.options = $.extend({}, this.options, options);

            this.element = elem;

            //init the dom building method
            this.buildDom();
        },

        options: {
            className: "person",
            smarts: 1
        },

        getName: function () {
            return this.options.name;
        },

        buildDom: function () {
            $(this.element)
                .addClass(this.options.className)
                .html(this.getName() + "<span class='smarts'>(" + this.options.smarts + ")</span>");
        }
    };

    /*
    Object Attendee

    A person with the added interface for a conference attendee
    */

    var Attendee = $.extend(Object.create(Person), (function () {

        //a private function added via the module pattern
        var addSmarts = function (points) {
            if (this.options.smarts) {
                this.options.smarts += points;
            }
            else {
                this.optons.smarts = points;
            }

            //update the indicator
            $(this.element).find('.smarts').text('(' + this.options.smarts + ')');
        };



        //return the object literal that we would normally just type if we weren't using the module pattern
        return {

            //public exposure proxying some internal functionality
            listen: function () {
                addSmarts.call(this, 1);
            },

            options: {
                className: 'attendee'
            }
        };

        //notice that this is jut a self-executing function
    })());

    /*
    Object Speaker

    A person that has speaking powers
    */
    var Speaker = $.extend(Object.create(Attendee), {

        //give it a speaking function
        speak: function (attendees) {

            this.options.smarts -= 1;

            for (var i in attendees) {
                attendees[i].listen();
            }

            //update the indicator
            $(this.element).find('.smarts').text('(' + this.options.smarts + ')');

            //this makes this method chainable
            return this;
        },

        options: {
            className: "speaker"
        },

        buildDom: function () {
            $(this.element)
                .addClass(this.options.className)
                .html(this.getName() + "<span class='smarts'>(" + this.options.smarts + ")</span>")
                .append('<a class="spk" href="#speak">[Speak]</a>');

        }
    });


    ////PLUGINIFY
    $.fn.extend({
        'person': function (options) {
            return this.each(function () {
                //create a new person
                var myPerson = Object.create(Person);

                //initialize this person with the plugin options
                myPerson.init(options, this);

                //save the reference to this person in the elem's data object
                $(this).data('person', myPerson);

            });
        },

        'attendee': function (options) {
            return this.each(function () {
                //create a new attendee
                var myAttendee = Object.create(Attendee);

                //initialize this attendee with the plugin options
                myAttendee.init(options, this);

                //save the reference to this attendee in the elem's data object
                $(this).data('attendee', myAttendee);

            });
        },

        'speaker': function (options) {
            return this.each(function () {
                //create a new speaker
                var mySpeaker = Object.create(Speaker);

                //initialize this speaker with the plugin options
                mySpeaker.init(options, this);

                //save the reference to this speaker in the elem's data object
                $(this).data('speaker', mySpeaker);

            });
        }
    });


})($);
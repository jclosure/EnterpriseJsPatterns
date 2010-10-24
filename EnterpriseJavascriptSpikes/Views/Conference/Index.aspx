<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Index</title>
    <script src="http://code.jquery.com/jquery-latest.js" type="text/javascript"></script>
    <script src="../../Scripts/prototypal.js" type="text/javascript"></script>
    <script src="../../Scripts/conference.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            //cache the elements where our people will be placed
            var personList = $('#personList'),
            attendeeList = $('#attendeeList'),
            speakerList = $('#speakerList');


            //create storage for our people
            var everyone = {
                persons: [],
                attendees: [],
                speakers: []
            };

            //handle add person button
            $('#add_person').click(function (e) {

                //generate a person
                var generatedPerson = $('<li />').person({
                    name: "Person " + everyone.persons.length,
                    smarts: 20
                })
                .appendTo('#personList');

                //debugger;
                //add the person to the everyone storage
                everyone.persons.push(generatedPerson.data('person'));

                //update the count
                //personList.prev().text(everyone.persons.length);

                //prevent link action
                return false;

            });


            //handle add attendee button
            $('#add_attendee').click(function (e) {

                //generate a person
                var generatedAttendee = $('<li />').attendee({
                    name: "Attendee " + everyone.attendees.length,
                    smarts: 20
                })
                .appendTo('#attendeeList');

                //debugger;
                //add the attendee to the everyone storage
                everyone.attendees.push(generatedAttendee.data('attendee'));

                //update the count
                //attendeeList.prev().text(everyone.attendees.length);

                //prevent link action
                return false;

            });

            //handle add speaker button
            $('#add_speaker').click(function (e) {

                //generate a person
                var generatedSpeaker = $('<li />').speaker({
                    name: "Speaker " + everyone.speakers.length,
                    smarts: 20
                })
                .appendTo('#speakerList');

                //debugger;
                //add the speaker to the everyone storage
                everyone.speakers.push(generatedSpeaker.data('speaker'));

                //update the count
                //speakerList.prev().text(everyone.speakers.length);

                //prevent link action
                return false;

            });


            //handle speaker's speak action (selector matches speaker's buildDom)
            speakerList.find('a.spk').live('click', function (e) {

                //get our speaker instance from the data cache
                var speakingSpeaker = $(this).closest('li').data('speaker');

                //invoke the speak behavior on our speaker object
                speakingSpeaker.speak(everyone.attendees);

                //prevent link action
                return false;

            });
        });
    </script>
</head>
<body>
    <div>
        <div>
            <input id="add_person" name="add_person" type="button" value="add_person" />
            <ul id="personList" />
        </div>
        <div>
            <input id="add_attendee" name="add_attendee" type="button" value="add_attendee" />
            <ul id="attendeeList" />
        </div>
        <div>
            <input id="add_speaker" name="add_speaker" type="button" value="add_speaker" />
             <ul id="speakerList" />
        </div>
        
        
       
    </div>
</body>
</html>

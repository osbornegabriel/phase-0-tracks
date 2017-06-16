jquery sources:

Things jquery can do according to the challenge:
  -Add event listeners for clicking, hovering, and other user actions
  -Add or remove CSS classes in response to events
  -Make elements fade in or out, slide up or down, or otherwise transition from visible to invisible
  -Grab values from forms
  ... and lots more!

1) Look up what jquery sources are available, to see what's most effective
-- Also look at videos potentially?
-- There's likely a user manual, similar to the one for ruby, look that up
-- Read some articles on w3
-- Perhaps even google "best jquery faqs/resources/tutorials"

2) On breaks
-- It's late, so perhaps five minute tea breaks every 20-30 min
-- Eat some food after the first thirty minute chunk or after the first hour, just to have energy for the rest of this long night

3) When to test
-- First, you need to get a general grasp on what the jquery even is
-- After the meal break, start messing around with various bits of code

------------------

**Researching now**

Definitely use:
 w3schools

 - downloaded jquery

Things you need to write with every doc using jquery:
- Link it into your html with '<script src="jquery.js"></script>'
- The syntax you use every time you use jquery:

<script>
  $(document).ready(function() {
    *put your code in here*

  });


</script>

  ----- The alternative short-hand, that does the same thing is this:

<script>
  $(function() {
    *put your code in here*

  });

</script>



You can have multiple  document.ready functions, but only need one.

Random notes:
* The syntax appears to be $(target).tool(milliseconds e.g. 1000);
* You can continue to chain commands up until the semi-colon is written
* 1000 milliseconds = 1 second
* You can also do $(id).css{ *and put css commands here, like opacity:'0.5' *})

* For events, you can use:


$('id').on('js event inside here', function(){
  *Code what happens when event occurs here!*

})

*** You can also directly use events in jquery, whereas '.on' appears to reference the events you'd see using html

Great links found:
Jquery Library - https://api.jquery.com/
powerpoint - https://www.slideshare.net/simon/learning-jquery-in-30-minutes

8-minute tutorial - https://www.youtube.com/watch?v=hMxGhHNOkCU
2nd part, on event binding - https://www.youtube.com/watch?v=G-POtu9J-m4
Writing smarter, better code - https://www.youtube.com/watch?v=Cc3K2jDdKTo
There are more videos too!!!



Other links:
html on___ events - https://www.w3schools.com/tags/ref_eventattributes.asp
Jquery event list - https://api.jquery.com/category/events/
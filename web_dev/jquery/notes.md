A 2 hour plan for tackling jquery:
 Overview: Time box in sprints
   10 min:  Google 
    What is it? Go beyond the description in lesson
        A JavaScript library - write less; do more!
        The purpose of jQuery is to make it much easier to use JavaScript on your website.
        The jQuery library contains the following features:

    HTML/DOM manipulation
    CSS manipulation
    HTML event methods
    Effects and animations
    AJAX
    Utilities
        Tip: In addition, jQuery has plugins for almost any task out there.
 Why do I want it jquery vs other frameworks- biggest companies use it and it works in all browsers!
    You can use it to find html elements
    changing content
    listening
    animating
    talking over the network

Syntax: What does it look like? 
    The jQuery library is a single JavaScript file, and you reference it with the HTML <script> tag (notice that the <script> tag should be inside the <head> section):

    <head>
    <script src="jquery-1.12.2.min.js"></script>
    </head>
    Tip: Place the downloaded file in the same directory as the pages where you wish to use it.

    Note    Do you wonder why we do not have type="text/javascript" inside the <script> tag?

    This is not required in HTML5. JavaScript is the default scripting language in HTML5 and in all modern browsers!


    The jQuery syntax is made for selecting HTML elements and performing some action on the element(s).

    Basic syntax is: $(selector).action()

    A $ sign to define/access jQuery
    A (selector) to "query (or find)" HTML elements
    A jQuery action() to be performed on the element(s)
    Examples:

    $(this).hide() - hides the current element.

    $("p").hide() - hides all <p> elements.

    $(".test").hide() - hides all elements with class="test".

    $("#test").hide() - hides the element with id="test".

UI events occurs as a result of interactoion with the broswer window rather than the html page witthin it. (Page loaded, window resizes etc)

Diff ways to make sure the script runs:
document ready event vs load event vs placing scripts before closing body:
   
    window.addEventListener('load', function, false);

ex:  calling a set up function that fires a setup window after the page is loaded.  User can interact with page beforeteh scripts runs and then when the elements change it makes the site seem slower and sometimes awkward.

function setup() {
    var textInput;
    textInput = document.getElementById('username');
    textInput.focus()

}


    $(document).ready(function(){


   // jQuery methods go here...

    });
    This is to prevent any jQuery code from running before the document is finished loading (is ready).

    It is good practice to wait for the document to be fully loaded and ready before working with it. This also allows you to have your JavaScript code before the body of your document, in the head section.

    Here are some examples of actions that can fail if methods are run before the document is fully loaded:

        Trying to hide an element that is not created yet
        Trying to get the size of an image that is not loaded yet

    All selectors in jQuery start with the dollar sign and parentheses: $().
    Load wait
60  min parsing  TopDocumentation and tutorials
        What does it look like deployed- search
        Experiment
    j query.com- videos and interactive play
    w3 schools - docs  
    J query in Action: videos
    http://try.jquery.com/
    You tube video of good programmer using it.
Cheat sheet overview
    https://oscarotero.com/jquery/

    Ways to deploy in personal website?  new projet 
    45 min max on project.

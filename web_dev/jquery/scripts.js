//create element node
//create text node
//add text node to element node
//add element to dom tree

// Javascript:

// var list= document.getElementsByTagName('ul')[0];

// var newItemLast = document.createElement('li');
// var newTextLast = document.createTextNode('almond milk');
// newItemLast.appendChild(newTextlast);
// list.appendChild(newItemLast);

// var firstItem = document.getElementByID('one');
// var itemContent = firstItem.innerHTML;	
// firstItem.innerHTML = "<a href='http://www.foodmatters.com/article/25-powerful-reasons-to-eat-bananas'> + itemContent + '</a>";


// JQUERY:

 //     var $newlistItem = $('<li>almond milk</li>');
 // $('li:last').after($newListItem);
// $(document).ready(function(){

 // var $newlistItem = $('<li>almond milk</li>');
 // $('li:last').after($newListItem);
// });


$(document).ready(function(){
    $("button").click(function(){
       $("p").hide();
       $('li').prepend('+ ');
  
 
   });
});
       
        // $("p")fadein("slow");
        // 
        // }
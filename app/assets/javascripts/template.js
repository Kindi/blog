 //Enabling drop down navigation for mobile screen sizes
<<<<<<< HEAD

=======
>>>>>>> f5e8db45875bb0ddf80c8d6846d3106ae9aa7a6f
$(function () {
     $("#nav").tinyNav({ header: '-- Navigation --' });
  });

//Adjusting the sub-menu positions so they are centered
document.onreadystatechange = function() {
    if (document.readyState === 'complete') {
	 	$("ul.ww-nav ul.dropdown-menu").each(function(){
	 		parentWidth = $(this).parent().innerWidth();
	 		menuWidth = $(this).innerWidth();
	 		margin = (parentWidth / 2 ) - (menuWidth / 2);
	 		margin = margin + "px";
	 		$(this).css("margin-left", margin);
	 	});
 	}
}
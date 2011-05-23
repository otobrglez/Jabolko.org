$(document).ready(function() {
	
	//ARTICLE FORM
	
	//Source toggle
	$('#add_new_source').click(function(){
		$('#new_article_source').toggle();
		return false;
	})
	
	//Textile plonkec toggle
	$('a.textile_plonkec').click(function(){
		$('div.textile_plonkec').toggle();
		return false;
	})
	
	//Intro/Body tabs
	$('#articleTab1, #articleTab2').hide().filter(':last').show();
	$('#articleTabs h3 a').filter(':last').addClass('selected');
	
	$('#articleTabs h3 a').click(function(){
		$('#articleTab1, #articleTab2').hide().filter(this.hash).show();
		
		$('#articleTabs h3 a').removeClass('selected');
		$(this).addClass('selected');
		
		return false;
	});
	
	$("#select_all_comments").click(function() {
		var checked_status = this.checked;
		$(".checkbox_for_comment_deletion input").each(function() {
			this.checked = checked_status;
		});
	});
	
});
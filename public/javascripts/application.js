//run highlighter
SyntaxHighlighter.all()

//generate random number
jQuery.extend({
	random: function(X) {
	    return Math.floor(X * (Math.random() % 1));
	},
	randomBetween: function(MinV, MaxV) {
	  return MinV + jQuery.random(MaxV - MinV + 1);
	}
});


$(document).ready(function() {
	
	// fetch latest comments from disqus
	var noCache = new Date().getTime();
	$.getJSON('http://jabolko-disqus.heroku.com/jabolko/comments/latest?callback=?', { "noCache": noCache }, function(data){
		// console.log(data);
		$.each(data, function(index, value){
			$('#blog .list').append('<li><a href="'+value.comment.url+'#comment-'+value.comment.disqus_id+'">'+value.comment.message+'</a></li>');
		});
	});
	
	// move on center pagination
	$('.pagination').addClass('float_left');
	$('.pagination').css({
		'width': $('.pagination').width()+12+'px'
	}).removeClass('float_left');
	
	// FLOATING BANNER
	$('#floating_banner').hide();
	
	if ($.cookies.get('hide_floating_banner') == null) {
		$('#floating_banner').delay(1000).fadeIn();
	};
	
	$('.floating_banner_close').click(function(){
		$('#floating_banner').fadeOut();
		$.cookies.set('hide_floating_banner', 'true')
		return false;
	});
	
	//dodaj atribut target="_blank" vsem pozevam z titlom Zunanja povezava
	$("a > img[alt^='Zunanja povezava']").parent().attr("rel","external");
	$("a[title^='Zunanja povezava']").attr("rel","external");
	$("a[rel*='external']").attr("target","_blank");
	
	//hover linkov v sidebaru
	$('ul.list li').hover(function(){
		$(this).addClass('hover');
	}, function(){
		$(this).removeClass('hover');
	});
	
	//Dodaj opis v prazen input field
	function fillForm (selector, inputValue) {
		if (selector.val() == '') {
			selector.attr('value',inputValue);
		};

		selector.focus(function() {
			if ($(this).attr('value') == inputValue) {
				$(this).attr('value', '');
			};
		});

		selector.blur(function() {
			if ($(this).attr('value') == '') {
				$(this).attr('value', inputValue);
			};
		});
	}
	
	
	fillForm($('#comment_email'), 'Email');
	fillForm($('#comment_name'), 'Ime in priimek');
	fillForm($('#comment_body'), 'Vsebina komentarja');
	fillForm($('#q'), 'Iskanje');
	
	fillForm($('#module_search_form_inputbox'), 'Išči blog');
	
	var commentWwwVal = $('#comment_www_holder');
	
	if (commentWwwVal.val() == '') {
		commentWwwVal.attr('value','Spletna stran');
	};

	commentWwwVal.focus(function() {
		if ($(this).attr('value') == 'Spletna stran') {
			$(this).attr('value', 'http://');
		};
	});

	commentWwwVal.blur(function() {
		if ($(this).attr('value') == 'http://' || $(this).attr('value') == '') {
			$(this).attr('value', 'Spletna stran');
		};
	});
	
	//dodaj komentar errors
	
	$('.comment_body_error, .comment_name_error, .comment_email_error, .comment_www_holder_error').addClass('hide');
	
	var commentBody = $('#comment_body');
	var commentName = $('#comment_name');
	var commentEmail = $('#comment_email');
	var commentWwwHolder = $('#comment_www_holder');
	
	$('#comment_submit').click(function() {
		$('.comment_body_error, .comment_name_error, .comment_email_error, .comment_www_holder_error').removeClass('show').addClass('hide');
		
		var commentBodyVal = $('#comment_body').val();
		var commentNameVal = $('#comment_name').val();
		var commentEmailVal = $('#comment_email').val();
		var commentWwwHolderVal = $('#comment_www_holder').val();
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		var wwwHolderReg = /^http\:\/\/|https\:\/\//;
		
		if (commentBodyVal == '' || commentBodyVal == 'Vsebina komentarja') {
			$('.comment_body_error').removeClass('hide').addClass('show');
		};
		
		if (commentNameVal == '' || commentNameVal == 'Ime in priimek') {
			$('.comment_name_error').removeClass('hide').addClass('show');
		};
		
		if (commentEmailVal == '' || commentEmailVal == 'Email' || !emailReg.test(commentEmailVal)) {
			$('.comment_email_error').removeClass('hide').addClass('show');
		};
		
		if (commentWwwHolderVal != 'Spletna stran') {
			if (!wwwHolderReg.test(commentWwwHolderVal)) {
				$('.comment_www_holder_error').removeClass('hide').addClass('show');
				return false;
			};
		};
		
		if (commentBodyVal == '' || commentBodyVal == 'Vsebina komentarja' || commentNameVal == '' || commentNameVal == 'Ime in priimek' || commentEmailVal == '' || commentEmailVal == 'Email' || !emailReg.test(commentEmailVal)) {
			return false;
		};
		
	});
	
	//new comment form elements focus
	function focusBorder(selector) {
		selector.focus(function(){
			selector.addClass('focus');
		});

		selector.blur(function(){
			selector.removeClass('focus');
		});
	}
	
	focusBorder(commentBody);
	focusBorder(commentName);
	focusBorder(commentEmail);
	focusBorder(commentWwwHolder);
	
	//tabi pri jabke iz apple.com
	var tabContainersFeedParser = $('#feedParser .tabContent > div');
	var randomNum = $.randomBetween(0, 5);
	
	$('#feedParser .tabNav li:eq('+randomNum+')').addClass('selected');
	
	tabContainersFeedParser.hide().filter(':eq('+randomNum+')').show();
	
	$('#feedParser .tabNav a').click(function(){
		tabContainersFeedParser.hide().filter(this.hash).show();
				
		$('#feedParser .tabNav li').removeClass('selected');
		$(this).parent('li').addClass('selected');
		
		return false;
	});
	
	//tabi pri zadnji komentarji in na forumu
	var tabContainersTabedModule = $('#tabed_module .tabContent > div');
	
	$('#tabed_module .tabNav li:first').addClass('selected');
	
	tabContainersTabedModule.hide().filter(':first').show();
	
	$('#tabed_module .tabNav a').click(function(){
		tabContainersTabedModule.hide().filter(this.hash).show();
				
		$('#tabed_module .tabNav li').removeClass('selected');
		$(this).parent('li').addClass('selected');
		
		if (this.hash == '#blog') {
			$('#tabed_module p').text('Seznam zadnjih sedmih komentarjev na blogu.');
			$('#tabed_module .heading').text('Zadnji komentarji');
		} else if (this.hash == '#forum') {
			$('#tabed_module p').text('Seznam zadnjih sedmih sporočil na forumu.');
			$('#tabed_module .heading').text('Zadnja sporočila');	
		}
		
		return false;
	});
	
	//zrisi crticu do konca strani
	// main_content_height = $('#container').height()-221;
	// $('#main').css('height', main_content_height+'px');
});
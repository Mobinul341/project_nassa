var base_url = '/pams_site';// base url for js

$(function () {
		$('#start_datetime').datetimepicker({format:'YYYY-MM-DD H:m'});
		$('#end_datetime').datetimepicker({format:'YYYY-MM-DD H:m'});
});


$(document).on("click", "#mark-all", function(event) {	
	var wrap_selector = $(this).data('wrap-selector');	
	if($(this).is(":checked")){
		$(wrap_selector).find('.mark-all').prop('checked','checked');	
	}else{
		$(wrap_selector).find('.mark-all').removeAttr('checked');
	}
});




/*
 * .ajax_form is using for AJAX Form submit.
 * set .ajax_form calss in form class
 */
$(document).on("submit", "form.ajax_form", function(event) {
	url = $(this).attr('action');	
	if(url){
		var submit = $(this).find(':submit');
		submit.val('Saving...');
		submit.addClass('disabled');
		
		var data = $(this).serialize();
		$.ajax({
			type : 'POST',
			url : url,
			data: data,			
			success : function(data) {
				if(data){
					$("#content .vbox").html(data);
					$('#modal-close').click();
				}
				
				$(".overlay, #flashMessage").hide();
			}
		});
		
		event.preventDefault();	
	}
	
});


/*
 * previewImage For Show Image Preview when user select an image.
 * @selector is class or id exm: .image or #image
 */
function previewImage(selector) {
	var file = document.querySelector('input[type=file]'+selector).files[0];
	var reader = new FileReader();

	reader.onloadend = function() {
		$(".previewimg").remove();
		var previewHtml = '<div class="previewimg col-md-12 clearfix"><div><img class="thumbnail col-md-3" src="' + reader.result + '" /></div></div>';
		$(selector).before(previewHtml);
	}
	if (file) {
		reader.readAsDataURL(file);
	} else {
		$(".previewimg").html('');
	}
}


/*
 * handleImagePreview For multiple image preview before image upload
 * function call style below 
 * document.getElementById('inputImageTagId').addEventListener('change', handleFileSelect, false); 
 */


function handleImagePreview(evt) {	
	var files = evt.target.files; // FileList object

	// Loop through the FileList and render image files as thumbnails.
	for (var i = 0, f; f = files[i]; i++) {
		// Only process image files.
		if (!f.type.match('image.*')) {
			alert("Please Upload only Image");
		} else {
			var reader = new FileReader();
			// Closure to capture the file information.
			reader.onload = (function(theFile) {
				return function(e) {
					// Render thumbnail.
					var span = document.createElement('div');
					span.innerHTML = ['<div class="col-sm-2 col-md-2"><div  class="thumbnail"><img src="', e.target.result, '" title="', escape(theFile.name), '"/><div class="caption"><div>', escape(theFile.name), '</div><div>Size: ', escape(parseInt(theFile.size / 1000)), ' Kb</div></div>'].join('');
					document.getElementById('list').innerHTML = '';
					document.getElementById('list').insertBefore(span, null);
				};
			})(f);
			// Read in the image file as a data URL.
			reader.readAsDataURL(f);
		}
	}
}


/*
 * .ajax_page class are using for get href page link content by ajax
 *
 */

$(document).on("click", ".ajax_page", function(event) {	
	
	if ($(this).attr('href') == undefined) {
		url = $(this).find('a').attr('href');
	} else {
		url = $(this).attr('href');
	}

	var is_modal = false;
	if ($(this).data('target') != undefined) {
		var modal_id = $(this).data('target');
		is_modal = true;
		var loading_html = '<div class="center"><i class="fa fa-spinner fa-spin fa-4x"></i><p class="text-warning">Loading...</p></div>';
		$('#modal').find('.modal-content').html(loading_html);
	} else {
		$(".overlay").show();
	}
	
	
	$.ajax({
		type : 'GET',
		url : url,
		success : function(data) {
			if (is_modal) {
				$('#modal').find('.modal-content').html(data);

			} else {
				$("#content .vbox").html(data);
			}

			//hide flashMessage
			$(".overlay, #flashMessage").hide();
		}
	});
	event.preventDefault();
});


$(document).on("click", ".ajax_delete", function(event) {
	
	if(confirm('Are you want to Delete?')){
		if ($(this).attr('href') == undefined) {
		url = $(this).find('a').attr('href');
		} else {
			url = $(this).attr('href');
		}
		
		$(".overlay").show();
	
		$.ajax({
			type : 'POST',
			url : url,
			success : function(data) {		
				$("#content .vbox").html(data);	
				$(".overlay, #flashMessage").hide(); //hide flashMessage			
			}
		});
		
	}
	
	
	event.preventDefault();
});

/*
 * Overlay hidden by click
 */
$(document).on("click", ".overlay", function(event) {
	$(".overlay").hide();
});


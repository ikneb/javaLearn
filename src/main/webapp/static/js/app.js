var resume = {

	alert : function(message) {
		alert(message);
	},

	moreProfiles : function() {
		var page = parseInt($('#profileContainer').attr('data-profile-number')) + 1;
		var total = parseInt($('#profileContainer').attr('data-profile-total'));
		if (page >= total) {
			$('#loadMoreIndicator').remove();
			$('#loadMoreContainer').remove();
			return;
		}
		var url = '/fragment/more?page=' + page;

		$('#loadMoreContainer').css('display', 'none');
		$('#loadMoreIndicator').css('display', 'block');
		$.ajax({
			url : url,
			success : function(data) {
				$('#loadMoreIndicator').css('display', 'none');
				$('#profileContainer').append(data);
				$('#profileContainer').attr('data-profile-number', page);
				if (page >= total - 1) {
					$('#loadMoreIndicator').remove();
					$('#loadMoreContainer').remove();
				} else {
					$('#loadMoreContainer').css('display', 'block');
				}
			},
			error : function(data) {
				$('#loadMoreIndicator').css('display', 'none');
				resume.alert('Error! Try again later...');
			}
		});
	},
	createDatePicker : function() {
		/* http://bootstrap-datepicker.readthedocs.org/en/latest/options.html */
		$('.datepicker').datepicker({
			autoclose : true,
			clearBtn : true
		});
	},
	
	ui : {
		// http://handlebarsjs.com/
		template : null,

		getTemplate : function() {
			if (resume.ui.template == null) {
				var source = $("#ui-block-template").html();
				resume.ui.template = Handlebars.compile(source);
			}
			return resume.ui.template;
		},

		addBlock : function() {
			var template = resume.ui.getTemplate();
			var container = $('#ui-block-container');
			var blockIndex = container.find('.ui-item').length;
			var context = {
				blockIndex : blockIndex
			};
			container.append(template(context));

			resume.createDatePicker();
			container.find('input.level-slider').slider();
		},
		
		updateSelect : function(thisObj) {
			if(thisObj.val() == '') {
				var idSelectRef = thisObj.attr('data-ref-select');
				$('#'+idSelectRef).val('');
			}
		}
		
	},
	hobbies : {
		errorTimeout : null,

		save : function() {
			var hobbies = '';
			var selectedHobbyButtons = $('.hobby-btn.active');
			var maxHobbies = parseInt($('#ui-block-container').attr('data-max-hobbies'));
			if (selectedHobbyButtons.length > maxHobbies) {
				var closeFunction = function() {
					$('#errorAlert').fadeOut('slow');
					if (resume.hobbies.errorTimeout != null) {
						clearTimeout(resume.hobbies.errorTimeout);
						resume.hobbies.errorTimeout = null;
					}
				};
				$('#errorAlert button').unbind('click');
				$('#errorAlert button').click(closeFunction);
				$('#errorAlert').fadeIn('slow');
				resume.hobbies.errorTimeout = setTimeout(closeFunction, 5000);
				return;
			}
			for (var i = 0; i < selectedHobbyButtons.length; i++) {
				hobbies += $(selectedHobbyButtons[i]).attr('data-hobby');
				if (i != selectedHobbyButtons.length - 1) {
					hobbies += ',';
				}
			}
			var _csrfToken = $('#hobbyContainer').attr('data-csrf-value');
			resume.post('/edit/hobbies', {
				hobbies : hobbies,
				_csrf : _csrfToken
			});
		}
	},
	
	post : function(path, params) {
		var form = document.createElement("form");
		form.setAttribute("method", 'post');
		form.setAttribute("action", path);
		for ( var key in params) {
			if (params.hasOwnProperty(key)) {
				var value = params[key];
				if (value != undefined) {
					var hiddenField = document.createElement("input");
					hiddenField.setAttribute("type", "hidden");
					hiddenField.setAttribute("name", key);
					hiddenField.setAttribute("value", params[key]);
					form.appendChild(hiddenField);
				}
			}
		}
		document.body.appendChild(form);
		form.submit();
	},
	
	
	
	
};




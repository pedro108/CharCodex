$(function(){
	$('.submenu').hide();

	$('.submenu-title').click(function(){
		var atual = $(this);
		$('.submenu-title ul').each(function(){
			if($(this).parent().attr('id') != atual.attr('id'))
				$(this).slideUp(500);
		});

		$(this).find('ul').slideDown(500);
	});
});

function toggle_terrain_dimension() {
//  $('terrain_dimension_input').hide();
// 	$$('#terrain_dimension_input input').each(function(e) {
//    Field.clear(e);
//  })
}

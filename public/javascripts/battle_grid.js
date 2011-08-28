var Tilesize = 50;
var Layers = ['bg', 'obj', 'mst'];
var monsters = new Array();
var terrains = new Array();
var objects = new Array();
var grid;

function draw_holder(img_src, holder_id) {
	var img = $('#' + holder_id).find('img');

	if(img_src != null)
		img.attr('src', img_src);
	else
		img.attr('src', '/images/empty.png');
}

function grid_selectable_bind(event, ui) {
  var type = $('#item-select').val();
  var index = $('#' + type + '-select').val();
  var item = eval(type + '[' + index + ']');
  grid.draw_item(item, $(ui.selected));
}


$(document).ready(function() {
	grid = new Grid($('#grid'), Tilesize, Layers);
	terrains.push(new BackgroundGridItem(grid, 0, 'bg', null, 2));
	objects.push(new BackgroundGridItem(grid, 0, 'obj', null, 2));
	monsters.push(new GridItem(grid, 0, 'mst', null));

	$('#dimension-submit').click(function(){
		var new_dimension = Number($('#dimension-input').val());
		if(new_dimension > grid.dimension || confirm('Diminuir a dimensao do grid pode acarretar em perda de informacao. Deseja continuar mesmo assim?')){
			grid.resize(new_dimension);
		}
		grid.list.show();
	});

	$('#terrains-select').change(function(){
    var img_src = ($(this).val() == "0") ? null : terrains[$(this).val()].image;
		draw_holder(img_src, 'terrains-holder');
		$('#item-select').val('terrains');
    $('#item-select').change();
	});

	$('#monsters-select').change(function(){
    var img_src = ($(this).val() == "0") ? null : monsters[$(this).val()].image;
		draw_holder(img_src, 'monsters-holder');
		$('#item-select').val('monsters');
    $('#item-select').change();
	});

  $('#objects-select').change(function(){
    var img_src = ($(this).val() == "0") ? null : objects[$(this).val()].image;
		draw_holder(img_src, 'objects-holder');
		$('#item-select').val('objects');
    $('#item-select').change();
	});

  grid.list.bind("selectableselected", grid_selectable_bind);
});


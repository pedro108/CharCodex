var Tilesize = 50;
var Layers = ['bg', 'obj', 'mst'];
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
  var item = eval('grid.' + type + '[' + index + ']');
  grid.draw_item(item, $(ui.selected));
}


$(function() {
	grid = new Grid($('#grid'), Tilesize, Layers);

	$('#dimension-submit').click(function(){
		var new_dimension = Number($('#dimension-input').val());
		if(new_dimension > grid.dimension || confirm('Diminuir a dimensao do grid pode acarretar em perda de informacao. Deseja continuar mesmo assim?')){
			grid.resize(new_dimension);
		}
		grid.list.show();
	});

	$('#terrains-select').change(function(){
    var img_src = ($(this).val() == "0") ? null : grid.terrains[$(this).val()].image;
		draw_holder(img_src, 'terrains-holder');
		$('#item-select').val('terrains');
    $('#item-select').change();
	});

	$('#monsters-select').change(function(){
    var img_src = ($(this).val() == "0") ? null : grid.monsters[$(this).val()].image;
		draw_holder(img_src, 'monsters-holder');
		$('#item-select').val('monsters');
    $('#item-select').change();
	});

  $('#objects-select').change(function(){
    var img_src = ($(this).val() == "0") ? null : grid.objects[$(this).val()].image;
		draw_holder(img_src, 'objects-holder');
		$('#item-select').val('objects');
    $('#item-select').change();
	});

  grid.list.bind("selectableselected", grid_selectable_bind);

  $('form').keypress(function(event){
    if(event.which == 13)
      event.preventDefault();
  });

  $('#dimension-input, #dimension-submit').keypress(function(event){
    if(event.which == 13)
      $('#dimension-submit').click();
  });

  $('#submit-grid').click(function(){
    if($('#grid li').length > 0) {
      var dados_grid = new Object();
      $('#grid li').each(function(index){
        dados_grid[index] = new Object();
        dados_grid[index] = { bg : $(this).data('bg'),
                              mst : $(this).data('mst'),
                              obj : $(this).data('obj'),
                              obj_instance : $(this).attr('obj_instance'),
                              mst_instance : $(this).attr('mst_instance'),
                              line : $(this).data('line'),
                              column : $(this).data('column'),
                              t_type : $(this).data('t_type') };
      });

      $('#encounter_grid').val(JSON.stringify(dados_grid));
    }
  });
});


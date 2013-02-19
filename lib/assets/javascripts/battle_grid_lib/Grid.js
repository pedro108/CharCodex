/* 
 * Classe Grid de encontros 
 * Parametros do construtor: 
 * 	- list      : Elemento jquery <ul> que servirah de conteiner para o Grid no HTML.
 *  - tilesize  : Tamanho de cada tile em pixels.
 *  - layers    : Array de camadas de cada tile.
 */

function Grid(list, tilesize, layers) {
	this.list   = list;
	this.tilesize  = tilesize;
	this.layers    = layers;
	this.dimension = 0;
  this.terrains = new Array();
  this.objects = new Array();
  this.monsters = new Array();

  this.current_instance = 1;

  var grid = this;
  $(this.layers).each(function(index, value) {
	  var canvas = $('<canvas></canvas>');
		canvas.attr('id', 'canvas-' + value);
		canvas.attr('width', 3000);
		canvas.attr('height', 3000);
		canvas.css({'pointer-events': 'none' , 'position': 'absolute', 'top': '0px', 'left': '0px', 'z-index': String(index+1)});
		grid.list.parent().append(canvas);
	});

	this.terrains.push({grid: this, id: 0, type: 'bg', image: null, t_type: 2});
	this.objects.push({grid: this, id: 0, type: 'obj', image: null, t_type: 2});
	this.monsters.push({grid: this, id: 0, type: 'mst', image: null});
}

Grid.prototype.create = function(grid_obj) {
  var previousSibling = null;
  var i = 0;
  var drawn_instances = new Array();

  for(i in grid_obj) {
    var tile_obj = grid_obj[i];
    var li = this.create_tile(tile_obj, previousSibling);
    previousSibling = $('#tile-' + tile_obj.line + '-' + tile_obj.column);

    if(tile_obj.bg != null)
      this.draw_image(this.terrains[tile_obj.bg], li);
    if(tile_obj.obj != null && $.inArray(tile_obj.obj_instance, drawn_instances) < 0){
      this.draw_image(this.objects[tile_obj.obj], li);
      drawn_instances.push(tile_obj.obj_instance);
    }
    if(tile_obj.mst != null && $.inArray(tile_obj.mst_instance, drawn_instances) < 0){
      this.draw_image(this.monsters[tile_obj.mst], li);
      drawn_instances.push(tile_obj.mst_instance);
    }
  }

  this.adjust_dimension(Math.sqrt(Number(i)+1));
  this.list.show();
}

// Atualiza o valor dimension do Grid e o tamanho do grid de acordo com esse valor.
Grid.prototype.resize = function(new_dimension) {
	// Se a nova dimensao for menor, apaga os tiles a mais.
	// Se for maior, insere novos tiles.
	if(new_dimension < this.dimension) {
		this.list.find('li').each(function(){
			if($(this).data('line') > new_dimension || $(this).data('column') > new_dimension){
				$(this).remove();
			}
		});
	}
	else {
		var previousSibling = null;

		for(var i = 1; i <= new_dimension; i++){
      for(var j = 1; j <= new_dimension; j++){
        var tile_obj = {line : i, column : j, t_type : 2,
                        bg : null, obj : null, mst : null,
                        obj_instance : '', mst_instance : ''};
        this.create_tile(tile_obj, previousSibling);
        previousSibling = $('#tile-' + i + '-' + j);
      }
		}
	}
  this.adjust_dimension(new_dimension);
}

// Cria um tile do grid
Grid.prototype.create_tile = function(tile_obj, previousSibling){
  var tile_id = 'tile-' + tile_obj.line + '-' + tile_obj.column;
  if($('#' + tile_id).length < 1) {
    var li = $('<li></li>');
    li.width(this.tilesize);
    li.height(this.tilesize);
    li.data('line', tile_obj.line);
    li.data('column', tile_obj.column);
    li.data('t_type', tile_obj.t_type);
    li.data('bg', tile_obj.bg);
    li.data('obj', tile_obj.obj);
    li.data('mst', tile_obj.mst);
    li.attr('obj_instance', tile_obj.obj_instance);
    li.attr('mst_instance', tile_obj.mst_instance);

    li.attr('id', tile_id);
    (previousSibling == null) ? this.list.append(li) : previousSibling.after(li);

    return li;
  }
  return null;
}

// Ajusta as dimensoes do grid apos um resize/criacao do grid
Grid.prototype.adjust_dimension = function(new_dimension){
	this.list.width((this.tilesize+2)*new_dimension);
	this.list.height((this.tilesize+2)*new_dimension);	
	this.list.selectable({
		filter: 'li'
	});

	this.dimension = new_dimension;
}

// Desenha o item no holder selecionado
Grid.prototype.draw_item = function(item, holder){
	var grid = this;

	if(item.image != null) {
		if((item.type == 'bg' || grid.have_background(item, holder) ) &&
			 (item.type != 'mst' || grid.passable_terrain(item, holder) )) {

      if(item.type != 'bg' && grid.space_taken(item, holder)) {
        return false;
      }

      grid.draw_image(item, holder);

      for(var i = 0; i < item.lines; i++) {
        for(var j = 0; j < item.columns; j++) {
          var current_holder = $('#tile-' + String(Number(holder.data('line')) + i) + '-' + String(Number(holder.data('column')) + j));
          current_holder.data(item.type, item.id);
          if(item.type != 'bg')
            current_holder.attr(item.type + "_instance", grid.current_instance);
          if(item.t_type != null)
            current_holder.data('t_type', item.t_type);
        }
      }
		}
		else if(!grid.have_background(item, holder)) {
      if(holder.data('bg') == null)
			  alert('nao eh possivel adicionar objetos ou monstros em tiles vazias');
      return false;
    }
		else {
			alert('nao eh possivel adicionar monstros em terreno intransponivel');
      return false;
    }
	}
	else if(item.type != 'bg') {
    grid.clear_instance(item.type, holder);
  }
  else if(holder.data('obj') == null && holder.data('mst') == null) {
    var	context = $('#canvas-' + item.type)[0].getContext('2d');
    context.clearRect((2 + (2+grid.tilesize)*(holder.data('column')-1)),
                      (2 + (2+grid.tilesize)*(holder.data('line')-1)),
                      grid.tilesize, grid.tilesize);
    holder.data(item.type, null);
  }
	else {
		alert('Nao eh possivel remover o background em tiles com objetos ou monstros');
    return false;
  }

  this.current_instance++;
  return true;
}

// Desenha a imagem no holder selecionado
Grid.prototype.draw_image = function(item, holder){
  var context = $('#canvas-' + item.type)[0].getContext('2d');
  context.clearRect((2 + (2+grid.tilesize)*(holder.data('column')-1)),(2 + (2+grid.tilesize)*(holder.data('line')-1)), grid.tilesize*item.columns, grid.tilesize*item.lines);
    var img = new Image();
    img.src = item.image;
    $(img).load(function(){
      context.drawImage(this, (2 + (2+grid.tilesize)*(holder.data('column')-1)), (2 + (2+grid.tilesize)*(holder.data('line')-1)));
  });
}


Grid.prototype.clear_instance = function(type, holder) {
  if(type == 'bg')
    return;

  var instance = holder.attr(type + '_instance');
  var grid = this;
  var context = $('#canvas-' + type)[0].getContext('2d');
  var holders = grid.list.find('li[' + type + '_instance="' + instance + '"]');

  if(instance != '') {
    var arr = (type == 'obj') ? grid.objects : grid.monsters;
    context.clearRect((2 + (2+grid.tilesize)*($(holders[0]).data('column')-1)),
                      (2 + (2+grid.tilesize)*($(holders[0]).data('line')-1)),
                      grid.tilesize*arr[$(holders[0]).data(type)].columns, grid.tilesize*arr[$(holders[0]).data(type)].lines);

    holders.each(function(index) {
      $(this).data(type, null);
      $(this).attr(type + '_instance', '')
    });
  }
}

// Testa se ja existe um objeto no espaco que esse item quer ocupar
Grid.prototype.space_taken = function(item, holder) {
  var current_holder;
  for(var i = 0; i < item.lines; i++) {
    for(var j = 0; j < item.columns; j++) {
      current_holder = $('#tile-' + String(Number(holder.data('line')) + i) + '-' + String(Number(holder.data('column')) + j));
      if(current_holder.data(item.type) != null) {
        if(current_holder.data(item.type) != item.id)
          alert('Ja existe um ' + ((item.type == 'mst') ? 'monstro' : 'objeto') + ' nessa posicao');
        return true;
      }
    }
  }

  return false;
}

Grid.prototype.have_background = function(item, holder) {
  var current_holder;
  for(var i = 0; i < item.lines; i++) {
    for(var j = 0; j < item.columns; j++) {
      current_holder = $('#tile-' + String(Number(holder.data('line')) + i) + '-' + String(Number(holder.data('column')) + j));
      if(current_holder.data('bg') == null)
        return false;
    }
  }

  return true;
}

Grid.prototype.passable_terrain = function(item, holder) {
  var current_holder;
  for(var i = 0; i < item.lines; i++) {
    for(var j = 0; j < item.columns; j++) {
      current_holder = $('#tile-' + String(Number(holder.data('line')) + i) + '-' + String(Number(holder.data('column')) + j));
      if(current_holder.data('t_type') >= 2)
        return false;
    }
  }

  return true;
}

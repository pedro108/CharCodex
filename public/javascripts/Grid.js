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
		for(var i = 1; i <= Math.pow(new_dimension, 2); i++){
			var line   = String((i/new_dimension == Math.floor(i/new_dimension)) ? (i/new_dimension) : Math.floor(i/new_dimension) + 1);
			var column = String((i % new_dimension > 0) ? (i % new_dimension) : new_dimension);
			var tile_id = 'tile-' + line + '-' + column;

			if($('#' + tile_id).length < 1) {
				var li = $('<li></li>');
				li.width(this.tilesize);
				li.height(this.tilesize);
				// TODO: botar essas informacoes em um unico objeto
				li.data('line', line);
				li.data('column', column);
				li.data('t_type', 2);
				li.data('bg', null);
				li.data('obj', null);
				li.data('mst', null);
        li.attr('obj_instance', '');
        li.attr('mst_instance', '');

				li.attr('id', tile_id);
				(previousSibling == null) ? this.list.append(li) : previousSibling.after(li);
			}

			previousSibling = $('#' + tile_id);
		}
	}

	this.list.width((this.tilesize+2)*new_dimension);
	this.list.height((this.tilesize+2)*new_dimension);	
	this.list.selectable({
		filter: 'li'
	});

	this.dimension = new_dimension;
}

// Desenha a imagem no holder selecionado
Grid.prototype.draw_item = function(item, holder){
	var grid = this;
  var canvas = $('#canvas-' + item.type)[0];
	var	context = canvas.getContext('2d');

	if(item.image != null) {
		if((item.type == 'bg' || grid.have_background(item, holder) ) &&
			 (item.type != 'mst' || grid.passable_terrain(item, holder) )) {

      if(item.type != 'bg' && grid.space_taken(item, holder)) {
        return false;
      }

      // Desenha apenas se for o primeiro tile
      context.clearRect((2 + (2+grid.tilesize)*(holder.data('column')-1)),(2 + (2+grid.tilesize)*(holder.data('line')-1)), grid.tilesize*item.dimension, grid.tilesize*item.dimension);
      var img = new Image();
      img.src = item.image;
      $(img).load(function(){
        context.drawImage(this, (2 + (2+grid.tilesize)*(holder.data('column')-1) + (grid.tilesize*item.columns - this.width)/2), (2 + (2+grid.tilesize)*(holder.data('line')-1) + (grid.tilesize*item.lines - this.height)/2));
      });

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

Grid.prototype.clear_instance = function(type, holder) {
  if(type == 'bg')
    return;

  var instance = holder.attr(type + '_instance');
  var grid = this;
  var context = $('#canvas-' + type)[0].getContext('2d');
  var holders = grid.list.find('li[' + type + '_instance="' + instance + '"]');

  console.log(instance == '');
  // refatorar os arrays de itens do grid, fazer 1 so, propriedade de grid:
  if(instance != '') {
    context.clearRect((2 + (2+grid.tilesize)*($(holders[0]).data('column')-1)),
                      (2 + (2+grid.tilesize)*($(holders[0]).data('line')-1)),
                      grid.tilesize*monsters[$(holders[0]).data(type)].columns, grid.tilesize*monsters[$(holders[0]).data(type)].lines);

    holders.each(function(index){
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

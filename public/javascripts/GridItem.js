/*
 * Item que deve ser desenhado no grid.
 * Pode ser um Terreno, Objeto ou Monstro.
 * TODO: Incluir armadilha.
 * Propriedades:
 *  - grid			: grid que esse item percente.
 *  - type      : tipo do item (background, objeto, monstro)
 *  - dimension : dimensao do item (Default = 1)
 *  - images    : matriz das imagens de cada tile do grid que o item ocupa.
 *
 * Propriedades da subclasse do tipo Terreno:
 *  - t_type    : tipo de terreno (Intransponivel, Dificil, Normal).
 *
 */


function GridItem(grid, id, type, image, lines, columns) {
	this.grid = grid;
	this.id = id;
	this.type = type;
  this.image = image;
  this.lines = lines;
  this.columns = columns;
}


// Subclasse para o tipo de item Terreno.
BackgroundGridItem.prototype = new GridItem();
BackgroundGridItem.prototype.constructor = GridItem;
function BackgroundGridItem(grid, id, type, image, t_type, lines, columns){ 
	GridItem.prototype.constructor.call(this, grid, id, type, image, lines, columns);
	this.t_type = t_type;
}



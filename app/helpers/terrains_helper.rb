module TerrainsHelper

  def terrain_miniature_column(record)
    image_tag(h(record.miniature))
  end

end

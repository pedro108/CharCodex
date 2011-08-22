module MonstersHelper

  def monster_photo_column(record)
#link_to record.photo.url, :target => "blank" do
      image_tag(h(record.photo.url(:thumb)), :border => 0)
#end
  end

end

module CharactersHelper

  def photo_column(record)
    link_to record.photo.url, :target => "blank" do
      image_tag(h(record.photo.url(:thumb)), :border => 0)
    end
  end

  def self.lightview_options
    {
        :class => 'lightview',
        :'data-lightview-type' => 'ajax',
        :'data-lightview-options' => YAML::load_file("#{Rails.root}/config/lightview.yml").to_json.gsub(/^{|}$/, "").gsub(/\\|"/, "")
    }
  end

end

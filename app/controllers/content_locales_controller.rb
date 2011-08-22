class ContentLocalesController < ApplicationController
  uses_tiny_mce

  active_scaffold :content_locale do |config|
    config.columns = [:locale, :title, :content_text]

    config.columns[:locale].form_ui = :select
    config.columns[:locale].options = {:options => [['pt', 'pt'],['en', 'en']]}

    config.columns[:content_text].css_class = 'mceEditor'
    config.columns[:content_text].form_ui = :text_editor

    config.subform.layout = :vertical
  end
end

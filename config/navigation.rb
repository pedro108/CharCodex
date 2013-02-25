# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  # Specify a custom renderer if needed.
  # The default renderer is SimpleNavigation::Renderer::List which renders HTML lists.
  # The renderer can also be specified as option in the render_navigation call.
  # navigation.renderer = Your::Custom::Renderer

  # Specify the class that will be applied to active navigation items. Defaults to 'selected'
  # navigation.selected_class = 'your_selected_class'

  # Specify the class that will be applied to the current leaf of
  # active navigation items. Defaults to 'simple-navigation-active-leaf'
  # navigation.active_leaf_class = 'your_active_leaf_class'

  # Item keys are normally added to list items as id.
  # This setting turns that off
  # navigation.autogenerate_item_ids = false

  # You can override the default logic that is used to autogenerate the item ids.
  # To do this, define a Proc which takes the key of the current item as argument.
  # The example below would add a prefix to each key.
  # navigation.id_generator = Proc.new {|key| "my-prefix-#{key}"}

  # If you need to add custom html around item names, you can define a proc that will be called with the name you pass in to the navigation.
  # The example below shows how to wrap items spans.
  # navigation.name_generator = Proc.new {|name| "<span>#{name}</span>"}

  # The auto highlight feature is turned on by default.
  # This turns it off globally (for the whole plugin)
  # navigation.auto_highlight = false

  # Define the primary navigation
  navigation.items do |primary|
    # Add an item to the primary navigation. The following params apply:
    # key - a symbol which uniquely defines your navigation item in the scope of the primary_navigation
    # name - will be displayed in the rendered navigation. This can also be a call to your I18n-framework.
    # url - the address that the generated item links to. You can also use url_helpers (named routes, restful routes helper, url_for etc.)
    # options - can be used to specify attributes that will be included in the rendered navigation item (e.g. id, class etc.)
    #           some special options that can be set:
    #           :if - Specifies a proc to call to determine if the item should
    #                 be rendered (e.g. <tt>:if => Proc.new { current_user.admin? }</tt>). The
    #                 proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :unless - Specifies a proc to call to determine if the item should not
    #                     be rendered (e.g. <tt>:unless => Proc.new { current_user.admin? }</tt>). The
    #                     proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :method - Specifies the http-method for the generated link - default is :get.
    #           :highlights_on - if autohighlighting is turned off and/or you want to explicitly specify
    #                            when the item should be highlighted, you can set a regexp which is matched
    #                            against the current URI.  You may also use a proc, or the symbol <tt>:subpath</tt>. 
    #

    primary.item :blog, t(:blog), blog_path

    primary.item :player, t(:player), :class => 'submenu-title', :if => Proc.new { access? 3 } do |player|
      player.dom_class = 'submenu'
      player.item :characters, t('activerecord.models.character'), characters_path
    end

    primary.item :game_master, t(:master), :class => 'submenu-title', :if => Proc.new { access? 2 } do |gm|
      gm.dom_class = 'submenu'
      gm.item :adventures, t('activerecord.models.adventure'), adventures_path
      gm.item :monsters, t('activerecord.models.monster'), monsters_path
      gm.item :terrains, t('activerecord.models.terrain'), terrains_path
    end

    primary.item :moderator, t(:moderation), :class => 'submenu-title', :if => Proc.new { access? 1 } do |moderator|
      moderator.dom_class = 'submenu'
      moderator.item :contents, t('activerecord.models.content'), contents_path
      moderator.item :comments, t('activerecord.models.comment'), comments_path
    end

    primary.item :administration, t(:administration), :class => 'submenu-title', :if => Proc.new { access? 0 } do |adm|
      adm.dom_class = 'submenu'
      adm.item :users, t('activerecord.models.user'), users_path
      adm.item :skills, t('activerecord.models.skill'), skills_path
      adm.item :languages, t('activerecord.models.language'), languages_path
      adm.item :alignments, t('activerecord.models.alignment'), alignments_path
      adm.item :feats, t('activerecord.models.feat'), feats_path
      adm.item :races, t('activerecord.models.race'), races_path
      adm.item :character_class, t('activerecord.models.character_class'), character_classes_path
      adm.item :rogue_talent, t('activerecord.models.rogue_talent'), rogue_talents_path
      adm.item :deities, t('activerecord.models.deity'), deities_path
      adm.item :domains, t('activerecord.models.domain'), domains_path
      adm.item :spell_school, t('activerecord.models.spell_school'), spell_schools_path
      adm.item :spells, t('activerecord.models.spell'), spells_path
      adm.item :armors, t('activerecord.models.armor'), armors_path
      adm.item :weapons, t('activerecord.models.weapon'), weapons_path
      adm.item :gears, t('activerecord.models.gear'), gears_path
    end

    # you can also specify a css id or class to attach to this particular level
    # works for all levels of the menu
    # primary.dom_id = 'menu-id'
    primary.dom_class = 'menu'

    # You can turn off auto highlighting for a specific level
    # primary.auto_highlight = false

  end

end

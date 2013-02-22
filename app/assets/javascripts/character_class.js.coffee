$ ->
  $(document).on 'as:action_success', 'a.as_action', (event, action_link) =>
    if (action_link.adapter)
      $spellcaster_type_id = $ "#record_spellcaster_type_id"
      $(".spellcaster_field").toggle(!!$spellcaster_type_id.val())

  $(document).on 'change', "#record_spellcaster_type_id", (event) =>
    $this = $(event.currentTarget)
    $(".spellcaster_field").toggle(!!$this.val())
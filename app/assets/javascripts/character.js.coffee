@sheet_hide_callback = ->
  changed = $('#sheet_changed').val()
  window.location.reload() if changed == 'true'

submit_sheet_subform = ($input) ->
  $form = $input.closest('form')
  $(".sheet-saving-indicator").show()
  $form.submit()

$ ->
  $(document).on 'change', '#character_race_id', (event) =>
    $this = $(event.currentTarget)
    $.get "/races/#{$this.val()}/sheet_details", (response) =>
      $("#race-select-container .race-select-body").html(response)

  $(document).on 'change', '#character_character_character_class_character_class_id', (event) =>
    $this = $(event.currentTarget)
    $.get "/character_classes/#{$this.val()}/sheet_details", (response) =>
      $("#class-select-container .class-select-body").html(response)

  $(document).on 'click', '#race-select-container button.submit', (event) =>
    $form = $("#race-select-container form")
    $form.submit()

  $(document).on 'blur', "#character-sheet-inner input[type=text]", (event) =>
    $this = $(event.currentTarget)
    submit_sheet_subform($this)

@sheet_hide_callback = ->
  changed = $('#sheet_changed').val()
  window.location.reload() if changed == 'true'

submit_sheet_subform = ($input) ->
  $form = $input.closest('form')
  $(".sheet-saving-indicator").show()
  $form.submit()

$ ->
  $("body").on 'blur', "#character-sheet-inner input[type=text], textarea", (event) =>
    $this = $(event.currentTarget)
    submit_sheet_subform($this)

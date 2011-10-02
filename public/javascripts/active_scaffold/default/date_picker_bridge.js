jQuery(function($){
  if (typeof($.datepicker) === 'object') {
    $.datepicker.regional['pt'] = {"closeText":"Fechar","prevText":"Previous","nextText":"Next","currentText":"Today","monthNames":["Janeiro","Fevereiro","Mar\u00e7o","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"],"monthNamesShort":["Jan","Fev","Mar","Abr","Mai","Jun","Jul","Ago","Set","Out","Nov","Dez"],"dayNames":["Domingo","Segunda","Ter\u00e7a","Quarta","Quinta","Sexta","S\u00e1bado"],"dayNamesShort":["Dom","Seg","Ter","Qua","Qui","Sex","S\u00e1b"],"dayNamesMin":["Dom","Seg","Ter","Qua","Qui","Sex","S\u00e1b"],"changeYear":true,"changeMonth":true,"dateFormat":"dd/mm/yy"};
    $.datepicker.setDefaults($.datepicker.regional['pt']);
  }
  if (typeof($.timepicker) === 'object') {
    $.timepicker.regional['pt'] = {"ampm":false,"hourText":"Hora","minuteText":"Minuto","secondText":"Segundos","dateFormat":"dd/mm/yy, ","timeFormat":"hh:mmh, DD"};
    $.timepicker.setDefaults($.timepicker.regional['pt']);
  }
});
$(document).ready(function() {
  $('input.date_picker').live('focus', function(event) {
    var date_picker = $(this);
    if (typeof(date_picker.datepicker) == 'function') {
      if (!date_picker.hasClass('hasDatepicker')) {
        date_picker.datepicker();
        date_picker.trigger('focus');
      }
    }
    return true;
  });
  $('input.datetime_picker').live('focus', function(event) {
    var date_picker = $(this);
    if (typeof(date_picker.datetimepicker) == 'function') {
      if (!date_picker.hasClass('hasDatepicker')) {
        date_picker.datetimepicker();
        date_picker.trigger('focus');
      }
    }
    return true;
  });
});
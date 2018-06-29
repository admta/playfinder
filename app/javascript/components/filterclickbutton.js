function filterClickButton() {

  if($('#age_0_2').is(':checked') || $('#age_3_5').is(':checked')) {
    $("#all_ages").prop('checked', false);
  }

  if($('#all_ages').is(':checked')) {
    $("#age_0_2,#age_3_5").prop('checked', false);
  }

  $('#all_ages').on('change',function() {
    $("#age_0_2,#age_3_5").prop('checked', false);
  });

  $('#playground').on('change',function() {
    $("#events").prop('checked', false);
  });
  $('#events').on('change',function() {
    $("#playground").prop('checked', false);
  });

  // Auto submit
  var $search_form = $("#search_form");
  $search_form.find("input[type=checkbox],#datepick").on('change', function(){
    $search_form.submit();
  });
}

export { filterClickButton };

function filterClickButton() {
  // Click on the checkbox
  $("input[type=checkbox],#datepick").on('change', function(){
      $("#search_form").submit();
    });
}

export { filterClickButton };

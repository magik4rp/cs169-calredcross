$(document).ready(function() {
    $("input[type='text'], input[type='email'], input[type='password']").focus(function() {
          $(this).prev().css("margin-top", "-8px");
    });
});
    
// jQuery ->
//   $("a[rel=popover]").popover()
//   $(".tooltip").tooltip()
//   $("a[rel=tooltip]").tooltip()

jQuery(function() {
  $("a[rel=popover]").popover();
  $(".tooltip").tooltip();
  return $("a[rel=tooltip]").tooltip();
});
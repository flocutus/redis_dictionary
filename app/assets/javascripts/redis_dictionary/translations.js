// jQuery ->
//   $('#form-translation textarea').autosize()

//   $('#add-translation-link').click (event) ->
//     event.preventDefault()
//     $('#form-translation #locale').val('')
//     $('#form-translation #key').val('')
//     $('#form-translation #value').val('')
//     $('#form-translation #value').trigger('autosize')

//   $('.edit-translation').click (event) ->
//     event.preventDefault()
//     $('#form-translation #locale').val($(@).data('locale'))
//     $('#form-translation #key').val($(@).data('key'))
//     $('#form-translation #value').val($(@).html().trim())

//     $('#form-translation #value').trigger('autosize')

jQuery(function() {
  $('#form-translation textarea').autosize();
  $('#add-translation-link').click(function(event) {
    event.preventDefault();
    $('#form-translation #locale').val('');
    $('#form-translation #key').val('');
    $('#form-translation #value').val('');
    return $('#form-translation #value').trigger('autosize');
  });
  return $('.edit-translation').click(function(event) {
    event.preventDefault();
    $('#form-translation #locale').val($(this).data('locale'));
    $('#form-translation #key').val($(this).data('key'));
    $('#form-translation #value').val($(this).html().trim());
    return $('#form-translation #value').trigger('autosize');
  });
});

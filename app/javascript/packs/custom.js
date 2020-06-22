$(document).on('turbolinks:load', function() {

  $('form').on('click', '.remove_record', function(event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('tr').hide();
    return event.preventDefault();
  });

  $('form').on('click', '.add_fields', function(event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $('.fields').append($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });
  
  $("#grades").sortable( {
    placeholder: "ui-state-highlight", axis: 'y',
    update: function( event, ui ) {
      $(this).children().each(function(index) {
        $(this).find('input:first').val(index + 1)
      });
    }
  });
});
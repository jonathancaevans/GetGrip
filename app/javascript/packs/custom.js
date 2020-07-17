$(document).on('turbolinks:load', function() {

   $('body').on('select2:select', function (e) {
    contains();
    var colors = new Array();
    var x = 0;

    $('.color').find(':selected').each(function( index ) {
      var i;
      var newColor = true;

      for(i = 0; i < colors.length; i++){
        if(colors[i].name == $(this).text())
        {
          var data = new Object();
          data["Occurance"] = colors[i].data["Occurance"] + 1;

          colors[i].data = data;
          i = colors.length;
          newColor = false;
        }
      }

      if(newColor)
      {
        var color = new Object();
        color.name = $(this).text();

        var data = new Object();
        data["Occurance"] = 1;
        color.data = data;

        color.color = $(this).attr('data-swatch');

        colors[x] = color;

        x++;
      }
    });
    
    var chart = Chartkick.charts["chart-1"];
    chart.updateData(colors)
  });

  $(document).ready(function() {
    $('select').select2();
  });

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
    $('select').select2();
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
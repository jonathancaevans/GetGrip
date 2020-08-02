import 'select2'
import 'select2/dist/css/select2.css'

$(document).on('turbolinks:load', function() {
  //Color set ajax update
  $('body').on('select2:select', function (e) {
    if ($(".liveSettUpdate").length > 0) {
      updateStats();
    }
  });

  $(document).ready(function() {
    $('select').select2();
    if ($(".liveSettUpdate").length > 0) {
      updateStats();
    }
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

    console.log($(this).hasClass("chartUpdate"));
    if($(this).hasClass("chartUpdate")) {
      updateStats();
    }

    return event.preventDefault();
  });
  
  $("#grades").sortable( {
    placeholder: "ui-state-highlight", axis: 'y',
    update: function( event, ui ) {
      $(this).children().not("input").each(function(index) {
        $(this).find('input:first').val(index + 1);
        console.log(index);
      });
    }
  });
});

function updateStats()
{
  var colors = new Array();
  var grades = new Array();

  var colorCounter = 0;
  var gradeCounter = 0;

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

      colors[colorCounter] = color;

      colorCounter++;
    }
  });

  $('.grade').find(':selected').sort((a,b) => $(a).data("difficulty") - $(b).data("difficulty")).each(function( index ) {
    var i;
    var newGrade = true;

    for(i = 0; i < grades.length; i++){
      if(grades[i].name == $(this).text())
      {
        var data = new Object();
        data["Occurance"] = grades[i].data["Occurance"] + 1;

        grades[i].data = data;
        i = grades.length;
        newGrade = false;
      }
    }

    if(newGrade)
    {
      var grade = new Object();
      grade.name = $(this).text();

      var data = new Object();
      data["Occurance"] = 1;
      grade.data = data;

      grades[gradeCounter] = grade;

      gradeCounter++;
    }
  });

  console.log(colors);
  console.log(grades);

  var chart = Chartkick.charts["chart-1"];
  var chart2 = Chartkick.charts["chart-2"];
  chart.updateData(colors);
  chart2.updateData(grades);
}
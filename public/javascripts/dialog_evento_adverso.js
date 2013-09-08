$(document).ready(function() {
  $("._dialog_evento_adverso").dialog({autoOpen:false, width:500});

  $("._info_evento_adverso").click(function() {
    $("._dialog_evento_adverso").dialog('open');
  });
});
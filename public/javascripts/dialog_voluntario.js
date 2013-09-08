$(document).ready(function() {
  $("._dialog_voluntario").dialog({autoOpen:false});

  $("._info_voluntario").click(function() {
    $("._dialog_voluntario").dialog('open');
  });
});
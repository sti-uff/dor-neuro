$(document).ready(function() {
  $("._dialog_medicacoes, ._dialog_neuropatia").dialog({autoOpen:false, height:550, width:550});
  
  $("._medicacoes").click(function() {
    $("._dialog_medicacoes").dialog('open');
  });
  $("._neuropatia").click(function() {
    $("._dialog_neuropatia").dialog('open');
  });
});
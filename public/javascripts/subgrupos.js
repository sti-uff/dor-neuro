$(document).ready(function() {
  if ($("#alocacao_grupo_0").attr('checked') == 'checked') {
    $('._subgrupo').hide();
  }
  
  $("#alocacao_grupo_1").change(function() {
    if ($("#alocacao_grupo_1").attr('checked') == 'checked') {
      $('._subgrupo').show();
    }
  });
  
  $("#alocacao_grupo_0").change(function() {
    if ($("#alocacao_grupo_0").attr('checked') == 'checked') {
      $('._subgrupo').hide();
    }
  });
  
});
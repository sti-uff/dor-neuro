$(document).ready(function() {
  var soma1 = soma2 = soma3 = soma4 = soma5 = soma6 = soma7 = 0;
  var escore = 0;
  
  
  $("[name='laudo[dados_lanss_attributes][dor_desagradavel]']").change(function() {
    if ($("#laudo_dados_lanss_attributes_dor_desagradavel_true").prop('checked') == true) {
      soma1 = 5;
    } else {
      soma1 = 0;
    }
    atualizarEscore();
  });
  
  $("[name='laudo[dados_lanss_attributes][pele_manchada]']").change(function() {
    if ($("#laudo_dados_lanss_attributes_pele_manchada_true").prop('checked') == true) {
      soma2 = 5;
    } else {
      soma2 = 0;
    }
    atualizarEscore();
  });
  
  $("[name='laudo[dados_lanss_attributes][pele_sensivel]']").change(function() {
    if ($("#laudo_dados_lanss_attributes_pele_sensivel_true").prop('checked') == true) {
      soma3 = 5;
    } else {
      soma3 = 0;
    }
    atualizarEscore();
  });
  
  $("[name='laudo[dados_lanss_attributes][dor_repentina]']").change(function() {
    if ($("#laudo_dados_lanss_attributes_dor_repentina_true").prop('checked') == true) {
      soma4 = 5;
    } else {
      soma4 = 0;
    }
    atualizarEscore();
  });
  
  $("[name='laudo[dados_lanss_attributes][pele_queimacao]']").change(function() {
    if ($("#laudo_dados_lanss_attributes_pele_queimacao_true").prop('checked') == true) {
      soma5 = 5;
    } else {
      soma5 = 0;
    }
    atualizarEscore();
  });
  
  $("[name='laudo[dados_lanss_attributes][alodinia]']").change(function() {
    if ($("#laudo_dados_lanss_attributes_alodinia_true").prop('checked') == true) {
      soma6 = 5;
    } else {
      soma6 = 0;
    }
    atualizarEscore();
  });
  
  $("[name='laudo[dados_lanss_attributes][alteracao_limiar]']").change(function() {
    if ($("#laudo_dados_lanss_attributes_alteracao_limiar_true").prop('checked') == true) {
      soma7 = 5;
    } else {
      soma7 = 0;
    }
    atualizarEscore();
  });
  
  atualizarEscore = function() {
    escore = soma1 + soma2 + soma3 + soma4 + soma5 + soma6 + soma7;
    if (escore > 24) {
      escore = 24;
    } else {
      if (escore < 0) {
        escore = 0;
      }
    }
    $('#laudo_escore').val(escore);
  }
});
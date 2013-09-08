$(document).ready(function() {
  var questao1 = questao2 = questao3 = questao4 = questao5 = questao6 = questao7 = 0;
  var questao8 = questao9 = questao10 = questao11 = 0;
  var escore = 0;
  
  
  $("[name='laudo[dados_sf36_attributes][saude]']").change(function() {
    questao1 = parseFloat($("input[name='laudo[dados_sf36_attributes][saude]']:checked").val());
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][comparacao_saude]']").change(function() {
    questao2 = parseInt($("input[name='laudo[dados_sf36_attributes][comparacao_saude]']:checked").val());
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][atividades_vigorosas]']").change(function() {
    atualizarQuestao3();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][atividades_moderadas]']").change(function() {
    atualizarQuestao3();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][atividades_carregar_mantimentos]']").change(function() {
    atualizarQuestao3();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][atividades_varios_lances_escada]']").change(function() {
    atualizarQuestao3();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][atividades_um_lance_escada]']").change(function() {
    atualizarQuestao3();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][atividades_ajoelhar]']").change(function() {
    atualizarQuestao3();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][atividades_andar_mais_de_1_km]']").change(function() {
    atualizarQuestao3();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][atividades_varios_quarteiroes]']").change(function() {
    atualizarQuestao3();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][atividades_um_quarteirao]']").change(function() {
    atualizarQuestao3();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][atividades_banho]']").change(function() {
    atualizarQuestao3();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][fisico_menos_tempo_trabalho]']").change(function() {
    atualizarQuestao4();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][fisico_menos_tarefas]']").change(function() {
    atualizarQuestao4();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][fisico_limitado]']").change(function() {
    atualizarQuestao4();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][fisico_dificuldade]']").change(function() {
    atualizarQuestao4();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][emocional_menos_tempo_trabalho]']").change(function() {
    atualizarQuestao5();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][emocional_menos_tarefas]']").change(function() {
    atualizarQuestao5();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][emocional_nao_realizou_tarefas]']").change(function() {
    atualizarQuestao5();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][social_atividade]']").change(function() {
    questao6 = parseInt($("input[name='laudo[dados_sf36_attributes][social_atividade]']:checked").val());
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][dor]']").change(function() {
    questao7 = parseFloat($("input[name='laudo[dados_sf36_attributes][dor]']:checked").val());
    
    if ($("input[name='laudo[dados_sf36_attributes][interferencia_dor]']:checked").val() != undefined) {
      questao8 = parseInt($("input[name='laudo[dados_sf36_attributes][interferencia_dor]']:checked").val());
      if (questao7 >= 6 && questao8 == 5) {
        questao8 = 6;
      }
    }
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][interferencia_dor]']").change(function() {
    if ($("input[name='laudo[dados_sf36_attributes][dor]']:checked").val() != undefined) {
      var resposta7 = parseInt($("input[name='laudo[dados_sf36_attributes][dor]']:checked").val());
      questao8 = parseInt($("input[name='laudo[dados_sf36_attributes][interferencia_dor]']:checked").val());
      if (resposta7 >= 6 && questao8 == 5) {
        questao8 = 6;
      }
    } else {
      var valor = parseInt($("input[name='laudo[dados_sf36_attributes][interferencia_dor]']:checked").val());
      questao8 = valor + ((valor - 1) * 0.25)
    }
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][sentimento_vigor]']").change(function() {
    atualizarQuestao9();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][sentimento_nervoso]']").change(function() {
    atualizarQuestao9();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][sentimento_deprimido]']").change(function() {
    atualizarQuestao9();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][sentimento_calmo]']").change(function() {
    atualizarQuestao9();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][sentimento_energico]']").change(function() {
    atualizarQuestao9();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][sentimento_abatido]']").change(function() {
    atualizarQuestao9();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][sentimento_esgotado]']").change(function() {
    atualizarQuestao9();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][sentimento_feliz]']").change(function() {
    atualizarQuestao9();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][sentimento_cansado]']").change(function() {
    atualizarQuestao9();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][social_visita]']").change(function() {
    questao10 = parseInt($("input[name='laudo[dados_sf36_attributes][social_visita]']:checked").val());
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][adoece_facilmente]']").change(function() {
    atualizarQuestao11();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][saudavel]']").change(function() {
    atualizarQuestao11();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][saude_vai_piorar]']").change(function() {
    atualizarQuestao11();
    atualizarEscore();
  });
  
  $("[name='laudo[dados_sf36_attributes][saude_excelente]']").change(function() {
    atualizarQuestao11();
    atualizarEscore();
  });
  
  atualizarQuestao3 = function() {
    var letraA = ($("input[name='laudo[dados_sf36_attributes][atividades_vigorosas]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][atividades_vigorosas]']:checked").val());
    var letraB = ($("input[name='laudo[dados_sf36_attributes][atividades_moderadas]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][atividades_moderadas]']:checked").val());
    var letraC = ($("input[name='laudo[dados_sf36_attributes][atividades_carregar_mantimentos]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][atividades_carregar_mantimentos]']:checked").val());
    var letraD = ($("input[name='laudo[dados_sf36_attributes][atividades_varios_lances_escada]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][atividades_varios_lances_escada]']:checked").val());
    var letraE = ($("input[name='laudo[dados_sf36_attributes][atividades_um_lance_escada]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][atividades_um_lance_escada]']:checked").val());
    var letraF = ($("input[name='laudo[dados_sf36_attributes][atividades_ajoelhar]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][atividades_ajoelhar]']:checked").val());
    var letraG = ($("input[name='laudo[dados_sf36_attributes][atividades_andar_mais_de_1_km]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][atividades_andar_mais_de_1_km]']:checked").val());
    var letraH = ($("input[name='laudo[dados_sf36_attributes][atividades_varios_quarteiroes]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][atividades_varios_quarteiroes]']:checked").val());
    var letraI = ($("input[name='laudo[dados_sf36_attributes][atividades_um_quarteirao]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][atividades_um_quarteirao]']:checked").val());
    var letraJ = ($("input[name='laudo[dados_sf36_attributes][atividades_banho]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][atividades_banho]']:checked").val());
    questao3 = letraA + letraB + letraC + letraD + letraE + letraF + letraG + letraH + letraI + letraJ;
  }
  
  atualizarQuestao4 = function() {
    var letraA = ($("input[name='laudo[dados_sf36_attributes][fisico_menos_tempo_trabalho]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][fisico_menos_tempo_trabalho]']:checked").val());
    var letraB = ($("input[name='laudo[dados_sf36_attributes][fisico_menos_tarefas]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][fisico_menos_tarefas]']:checked").val());
    var letraC = ($("input[name='laudo[dados_sf36_attributes][fisico_limitado]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][fisico_limitado]']:checked").val());
    var letraD = ($("input[name='laudo[dados_sf36_attributes][fisico_dificuldade]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][fisico_dificuldade]']:checked").val());
    questao4 = letraA + letraB + letraC + letraD;
  }
  
  atualizarQuestao5 = function() {
    var letraA = ($("input[name='laudo[dados_sf36_attributes][emocional_menos_tempo_trabalho]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][emocional_menos_tempo_trabalho]']:checked").val());
    var letraB = ($("input[name='laudo[dados_sf36_attributes][emocional_menos_tarefas]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][emocional_menos_tarefas]']:checked").val());
    var letraC = ($("input[name='laudo[dados_sf36_attributes][emocional_nao_realizou_tarefas]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][emocional_nao_realizou_tarefas]']:checked").val());
    questao5 = letraA + letraB + letraC;
  }
  
  atualizarQuestao9 = function() {
    var letraA = ($("input[name='laudo[dados_sf36_attributes][sentimento_vigor]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][sentimento_vigor]']:checked").val());
    var letraB = ($("input[name='laudo[dados_sf36_attributes][sentimento_nervoso]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][sentimento_nervoso]']:checked").val());
    var letraC = ($("input[name='laudo[dados_sf36_attributes][sentimento_deprimido]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][sentimento_deprimido]']:checked").val());
    var letraD = ($("input[name='laudo[dados_sf36_attributes][sentimento_calmo]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][sentimento_calmo]']:checked").val());
    var letraE = ($("input[name='laudo[dados_sf36_attributes][sentimento_energico]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][sentimento_energico]']:checked").val());
    var letraF = ($("input[name='laudo[dados_sf36_attributes][sentimento_abatido]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][sentimento_abatido]']:checked").val());
    var letraG = ($("input[name='laudo[dados_sf36_attributes][sentimento_esgotado]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][sentimento_esgotado]']:checked").val());
    var letraH = ($("input[name='laudo[dados_sf36_attributes][sentimento_feliz]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][sentimento_feliz]']:checked").val());
    var letraI = ($("input[name='laudo[dados_sf36_attributes][sentimento_cansado]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][sentimento_cansado]']:checked").val());
    questao9 = letraA + letraB + letraC + letraD + letraE + letraF + letraG + letraH + letraI;
  }
  
  atualizarQuestao11 = function() {
    var letraA = ($("input[name='laudo[dados_sf36_attributes][adoece_facilmente]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][adoece_facilmente]']:checked").val());
    var letraB = ($("input[name='laudo[dados_sf36_attributes][saudavel]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][saudavel]']:checked").val());
    var letraC = ($("input[name='laudo[dados_sf36_attributes][saude_vai_piorar]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][saude_vai_piorar]']:checked").val());
    var letraD = ($("input[name='laudo[dados_sf36_attributes][saude_excelente]']:checked").val() == undefined) ?
      0 : parseInt($("input[name='laudo[dados_sf36_attributes][saude_excelente]']:checked").val());
    questao11 = letraA + letraB + letraC + letraD;
  }
  
  atualizarEscore = function() {
    escore = questao1 + questao2 + questao3 + questao4 + questao5 + questao6 + questao7 +
      questao8 + questao9 + questao10 + questao11;
    $('#laudo_escore').val(escore);
  }
});
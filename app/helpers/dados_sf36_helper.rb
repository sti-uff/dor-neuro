# -*- encoding : utf-8 -*-

module DadosSf36Helper

  def saude_to_s(saude)
    case saude
      when 5.0
        "Excelente"
      when 4.4
        "Muito Boa"
      when 3.4
        "Boa"
      when 2.0
        "Ruim"
      when 1.0
        "Muito Ruim"
    end
  end

  def comparacao_saude_to_s(comparacao_saude)
    case comparacao_saude
      when 1
        "Muito melhor agora do que um ano atrás"
      when 2
        " Um pouco melhor agora do que um ano atrás"
      when 3
        "Quase a mesma de um ano atrás"
      when 4
        "Um pouco pior agora do que um ano atrás"
      when 5
        "Muito pior agora do que um ano atrás"
    end
  end

  def atividades_to_s(atividade)
    case atividade
      when 1
        "Sim, muita dificuldade"
      when 2
        "Sim, um pouco de dificuldade"
      when 3
        "Sem dificuldade"
    end
  end

  def sim_nao(int)
    case int
      when 1
        "Sim"
      when 2
        "Não"
    end
  end

  def social_atividade_to_s(social_atividade)
    case social_atividade
      when 1
        "Extremamente"
      when 2
        "Bastante"
      when 3
        "Moderadamente"
      when 4
        "Ligeiramente"
      when 5
        "De forma nenhuma"
    end
  end

  def dor_to_s(dor)
    case dor
      when 1.0
        "Muito Grave"
      when 2.0
        "Grave"
      when 3.1
        "Moderada"
      when 4.2
        "Leve"
      when 5.4
        "Muito Leve"
      when 6.0
        "Nenhuma"
    end
  end

  def social_visita_to_s(social_visita)
    case social_visita
      when 1
        "Todo o tempo"
      when 2
        "A maior parte do tempo"
      when 3
        "Alguma parte do tempo"
      when 4
        "Uma pequena parte do tempo"
      when 5
        "Nenhuma parte do tempo"
    end
  end

end
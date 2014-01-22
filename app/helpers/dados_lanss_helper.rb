# encoding: utf-8
module DadosLanssHelper

  def resposta1(resposta)
    if resposta
      'b) SIM - Eu tenho este tipo de sensação com frequência - 5 pontos'
    else
      'a) NÃO - Minha dor não se parece com isso - 0 pontos'
    end
  end

  def resposta2(resposta)
    if resposta
      'b) SIM - Eu percebi que a dor faz com que minha pele mude de cor - 5 pontos'
    else
      'a) NÃO - Minha dor não afeta a cor da minha pele - 0 pontos'
    end
  end

  def resposta3(resposta)
    if resposta
      'b) SIM - Minha pele é mais sensível ao toque nesta área - 5 pontos'
    else
      'a) NÃO - Minha dor não faz com que minha pele fique mais sensível nesta área - 0 pontos'
    end
  end

  def resposta4(resposta)
    if resposta
      'b) SIM - Eu tenho estas sensações com muita frequência - 5 pontos'
    else
      'a) NÃO - Minha dor não se comporta desta forma - 0 pontos'
    end
  end

  def resposta5(resposta)
    if resposta
      'b) SIM - Eu tenho estas sensações com frequência - 5 pontos'
    else
      'a) NÃO - Eu não tenho este tipo de sensação - 0 pontos'
    end
  end

  def resposta6(resposta)
    if resposta
      'b) SIM - Alodinia somente na área dolorida - 5 pontos'
    else
      'a) NÃO - Sensação normal em ambas as áreas - 0 pontos'
    end
  end

  def resposta7(resposta)
    if resposta
      'b) SIM - Limiar por estímulo de agulha alterado no lado dolorido - 5 pontos'
    else
      'a) NÃO - Sensação igual em ambas as áreas - 0 pontos'
    end
  end

end

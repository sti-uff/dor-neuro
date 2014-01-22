module LaudosHelper

  def leve_moderada_intensa?(codigo)
    case (codigo)
    when Laudo::LEVE
      "Leve"
    when Laudo::MODERADA
      "Moderada"
    when Laudo::INTENSA
      "Intensa"
    else
      "N/A"
    end
  end

end

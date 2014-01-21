module LaudosHelper

  def leve_moderada_intensa?(codigo)
    case (codigo)
    when Laudo::LEVE
      "Leve"
    when Laudo::MODERADA
      "Moderada"
    when Laudo::MODERADA
      "Intensa"
    else
      nil
    end
  end

end

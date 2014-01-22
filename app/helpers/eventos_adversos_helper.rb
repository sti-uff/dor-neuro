module EventosAdversosHelper

  def leve_moderado_intenso?(codigo)
    case (codigo)
    when EventoAdverso::LEVE
      "Leve"
    when EventoAdverso::MODERADO
      "Moderado"
    when EventoAdverso::SEVERO
      "Severo  "
    else
      "N/A"
    end
  end

end

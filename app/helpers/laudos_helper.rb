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

  def render_dados(tipo)
    case tipo
      when Laudo::TIPO_BIOPSIA
        render :partial => "show_dados_biopsia"
      when Laudo::TIPO_DN4
        render :partial => "show_dados_dn4"
      when Laudo::TIPO_LANSS
        render :partial => "show_dados_lanss"
      when Laudo::TIPO_RX_TORAX
        render :partial => "show_dados_rx_torax"
      when Laudo::TIPO_SF36
        render :partial => "show_sf36"
    end
  end

end

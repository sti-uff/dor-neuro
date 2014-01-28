# encoding: utf-8
module ApplicationHelper

  def exibir(dado)
    case dado
    when true
      "Sim"
    when false
      "Não"
    when nil
      nil
    else
      dado
    end
  end

  def exibir_dado_com_metrica(dado,metrica)
    if dado
      ("#{dado}#{metrica}").html_safe
    else
      nil
    end
  end

  def exibir_pressao(p_sist,p_diast)

    if p_sist and p_diast
      p_sist.to_s + " x " + p_diast.to_s + " mmHg"
    end
    
  end

  def exibir_pdf_ou_imagem(model)
    if model.imagem.content_type.include? "image"
       image_tag model.imagem.url
    else
       link_to model.imagem.url, :class => "btn btn-large glyphicon glyphicon-download"  do  ' Download '  end
    end
  end


end

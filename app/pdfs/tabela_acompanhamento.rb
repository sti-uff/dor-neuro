# encoding: utf-8
class TabelaAcompanhamento < Prawn::Document

  def initialize(voluntario)
    super(:top_margin => 60, :page_size => "A4", :page_layout => :landscape)
    @voluntario = voluntario

    repeat(:all, :dynamic => true) do
      canvas do
        span(100, :position => :right) do
          move_down 10
          font_size 10
          text "Iniciais: #{@voluntario.nome}", :align => :right
          text "Número: #{@voluntario.id}", :align => :right
        end
      end

      canvas do
        span(550, :position => :center) do
          move_down 10
          cabecalho
        end
      end

    end

    lista_alunos
    notas
    numero_de_paginas

  end

  def cabecalho
    text "<u>Lista de Checagem</u>", :align => :center, :style => :bold, :inline_format => true, :size => 10
    move_down 10
    text "\"Ensaio clínico exploratório aberto randomizado multicêntrico para avaliar eficácia e segurança de esquemas terapêuticos para tratamento de dor neuropática em pacientes com hanseníase\"",
         :align => :center, :style => :bold, :size => 10
  end

  def lista_alunos
    font_size 8
    table lista_alunos_linhas, :header => true, :cell_style => { :padding => 3 }, :width => 650, :position => :center
    move_down 20
  end

  def lista_alunos_linhas
    [
        ["", "Seleção", "Randomização V1", "V2 Mês 1", "V3 Mês 2", "V4 Mês 3", "V5 Mês 4", "V6 Mês 5", "V7 Mês 6", "V8 Término"],
        ["DESVIOS PERMITIDOS", "-", "+/- 4 dias", "+/- 4 dias", "+/- 4 dias", "+/- 4 dias", "+/- 4 dias", "+/- 4 dias", "+/- 4 dias", "+/- 4 dias"],
        (["Data da Visita"] + Array.new(9, ""))
    ] +
        ["Obtenção TCLE", "Critérios inclusão e exclusão", "Anamnese", "Exame físico", "Sinais Vitais", "Medição Concomitante", "Evento adverso", "Dispensar Medicação", "Retorno/contabilidade adesão de medicação", "Biópsia nervo", "Randomização", "EVA", "SF-36", "Mini Mental", "DN4", "LANSS", "CHEPS", "QST", "ENMG", "Exames séricos", "Urinocultura", "Teste gravidez"].map do |a|
          ([a] + Array.new(9, ""))
        end
  end

  def notas
    text "Seleção: TGO, TGP, GGT, FA, Bilirrubinas totais e frações; Acompanhamentoe término: Hemácias, Hemoglobina, Hemaócrito, Volume Globular Médio (VGM), Hem. Glob. Média (HGM), C. H. Glob. Média (CHGM), RDW, Neutrófilos, Leucócitos, Linfócitos, Monócitos, Eosinófilos, Basófilos, Plaquetas, Ureia, Creatinina, TGO, TGP, GGT, FA, Bilirrubinas totais e frações, Glicose de jejum, HbA1c"
    text "Teste de gravidez sérico na seleção e de urina nas demais visitas."
  end

  def numero_de_paginas
    string = "Página <page> de <total>"

    options = { :at => [bounds.right - 150, 0],
                :width => 150,
                :align => :right }

    number_pages string, options
  end
end
# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'profissao', 'profissoes'
  inflect.irregular 'inclusao', 'inclusoes'
  inflect.irregular 'visita', 'visitas'
  inflect.irregular 'imagem', 'imagens'
  inflect.irregular 'gravidez', 'gravidezes'
  inflect.irregular 'alocacao', 'alocacoes'
  inflect.irregular 'dispensacao', 'dispensacoes'
  inflect.irregular 'adesao', 'adesoes'
  inflect.irregular 'erro impediu', 'erros impediram'
  inflect.irregular 'agendamento_sms', 'agendamentos_sms'
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
end

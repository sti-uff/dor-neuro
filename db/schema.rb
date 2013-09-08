# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121010122808) do

  create_table "cargos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["nome"], :name => "index_cargos_on_nome", :unique => true
  end

  create_table "centros", :force => true do |t|
    t.string   "nome"
    t.integer  "categoria"
    t.string   "telefone"
    t.string   "ramal"
    t.string   "responsavel"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profissoes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["nome"], :name => "index_profissoes_on_nome", :unique => true
  end

  create_table "usuarios", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nome"
    t.string   "celular"
    t.string   "registro"
    t.integer  "centro_id"
    t.integer  "cargo_id"
    t.integer  "profissao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], :name => "index_usuarios_on_email", :unique => true
    t.index ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true
    t.index ["centro_id"], :name => "index_usuarios_on_centro_id"
    t.index ["cargo_id"], :name => "index_usuarios_on_cargo_id"
    t.index ["profissao_id"], :name => "index_usuarios_on_profissao_id"
    t.foreign_key ["centro_id"], "centros", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "usuarios_ibfk_1"
    t.foreign_key ["cargo_id"], "cargos", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "usuarios_ibfk_2"
    t.foreign_key ["profissao_id"], "profissoes", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "usuarios_ibfk_3"
  end

  create_table "ufs", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voluntarios", :force => true do |t|
    t.string   "nome"
    t.date     "data_nascimento"
    t.string   "prontuario"
    t.integer  "sexo"
    t.integer  "estado_civil"
    t.string   "profissao"
    t.string   "email"
    t.integer  "nacionalidade"
    t.string   "telefone"
    t.string   "celular"
    t.integer  "centro_id"
    t.integer  "naturalidade"
    t.date     "data_entrevista"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["centro_id"], :name => "index_voluntarios_on_centro_id"
    t.index ["naturalidade"], :name => "index_voluntarios_on_naturalidade"
    t.foreign_key ["centro_id"], "centros", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "voluntarios_ibfk_1"
    t.foreign_key ["naturalidade"], "ufs", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "voluntarios_ibfk_2"
  end

  create_table "visitas", :force => true do |t|
    t.integer  "voluntario_id"
    t.integer  "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["voluntario_id"], :name => "index_visitas_on_voluntario_id"
    t.foreign_key ["voluntario_id"], "voluntarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "visitas_ibfk_1"
  end

  create_table "adesoes", :force => true do |t|
    t.text     "observacoes"
    t.date     "data"
    t.integer  "visita_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["visita_id"], :name => "index_adesoes_on_visita_id"
    t.index ["usuario_id"], :name => "index_adesoes_on_usuario_id"
    t.foreign_key ["visita_id"], "visitas", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "adesoes_ibfk_1"
    t.foreign_key ["usuario_id"], "usuarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "adesoes_ibfk_2"
  end

  create_table "dispensacoes", :force => true do |t|
    t.integer  "medicamento"
    t.text     "posologia"
    t.text     "quantidade"
    t.date     "data"
    t.integer  "dispensavel_id"
    t.string   "dispensavel_type"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["usuario_id"], :name => "index_dispensacoes_on_usuario_id"
    t.foreign_key ["usuario_id"], "usuarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "dispensacoes_ibfk_1"
  end

  create_table "agendamentos_sms", :force => true do |t|
    t.datetime "data_hora"
    t.integer  "status",         :default => 0
    t.string   "texto"
    t.integer  "dispensacao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["dispensacao_id"], :name => "index_agendamentos_sms_on_dispensacao_id"
    t.foreign_key ["dispensacao_id"], "dispensacoes", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "agendamentos_sms_ibfk_1"
  end

  create_table "agendas", :force => true do |t|
    t.date     "data"
    t.integer  "tipo"
    t.integer  "voluntario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["voluntario_id"], :name => "index_agendas_on_voluntario_id"
    t.foreign_key ["voluntario_id"], "voluntarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "agendas_ibfk_1"
  end

  create_table "alocacoes", :force => true do |t|
    t.integer  "grupo"
    t.integer  "voluntario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["voluntario_id"], :name => "index_alocacoes_on_voluntario_id"
    t.foreign_key ["voluntario_id"], "voluntarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "alocacoes_ibfk_1"
  end

  create_table "avaliacao_clinicas", :force => true do |t|
    t.integer  "pressao_sistolica"
    t.integer  "pressao_diastolica"
    t.integer  "frequencia_cardiaca"
    t.integer  "frequencia_respiratoria"
    t.float    "temperatura"
    t.integer  "peso"
    t.float    "altura"
    t.text     "queixa_principal"
    t.text     "historia_doenca_atual"
    t.text     "historia_medica_pregressa"
    t.text     "historico_familiar"
    t.text     "historia_pessoal_social"
    t.boolean  "tabagista"
    t.string   "carga_tabagica"
    t.boolean  "alcoolista"
    t.string   "quantidade_alcool"
    t.text     "alergias"
    t.text     "revisao_sistemas"
    t.integer  "avaliavel_id"
    t.string   "avaliavel_type"
    t.integer  "usuario_id"
    t.date     "data_sinais_vitais"
    t.date     "data_anamnese"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["usuario_id"], :name => "index_avaliacao_clinicas_on_usuario_id"
    t.foreign_key ["usuario_id"], "usuarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "avaliacao_clinicas_ibfk_1"
  end

  create_table "criterios", :force => true do |t|
    t.boolean  "inclusao_idade"
    t.boolean  "inclusao_diagnostico_hanseniase"
    t.boolean  "inclusao_duracao_sintomas"
    t.boolean  "inclusao_duracao_dor"
    t.boolean  "inclusao_virgem_tratamento"
    t.boolean  "inclusao_assinou_tcle"
    t.boolean  "exclusao_gravidez_amamentacao"
    t.boolean  "exclusao_deficit_cognitivo"
    t.boolean  "exclusao_incapaz_pontuar_dor"
    t.boolean  "exclusao_neoplasia_maligna"
    t.boolean  "exclusao_imunodeficiente"
    t.boolean  "exclusao_disfuncao_renal_hepatica"
    t.boolean  "exclusao_medicacoes"
    t.boolean  "exclusao_neuropatia_periferica"
    t.boolean  "exclusao_idade_fertil_sem_anticoncepcionais"
    t.date     "data"
    t.integer  "voluntario_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["voluntario_id"], :name => "index_criterios_on_voluntario_id"
    t.index ["usuario_id"], :name => "index_criterios_on_usuario_id"
    t.foreign_key ["voluntario_id"], "voluntarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "criterios_ibfk_1"
    t.foreign_key ["usuario_id"], "usuarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "criterios_ibfk_2"
  end

  create_table "laudos", :force => true do |t|
    t.datetime "imagem_updated_at"
    t.string   "imagem_file_name"
    t.integer  "imagem_file_size"
    t.string   "imagem_content_type"
    t.date     "data"
    t.integer  "escore"
    t.boolean  "bool"
    t.integer  "tipo"
    t.integer  "visita_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["visita_id"], :name => "index_laudos_on_visita_id"
    t.index ["usuario_id"], :name => "index_laudos_on_usuario_id"
    t.foreign_key ["visita_id"], "visitas", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "laudos_ibfk_1"
    t.foreign_key ["usuario_id"], "usuarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "laudos_ibfk_2"
  end

  create_table "dados_biopsia", :force => true do |t|
    t.integer  "celulas_inflamatorias"
    t.integer  "vasculite"
    t.integer  "fibrose"
    t.integer  "bacilos"
    t.integer  "perda_fibras"
    t.integer  "degeneracao_axonal"
    t.integer  "regeneracao_axonal"
    t.integer  "desmielinizacao_ativa"
    t.integer  "laudo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["laudo_id"], :name => "index_dados_biopsia_on_laudo_id"
    t.foreign_key ["laudo_id"], "laudos", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "dados_biopsia_ibfk_1"
  end

  create_table "dados_dn4", :force => true do |t|
    t.boolean  "queimadura"
    t.boolean  "frio_doloroso"
    t.boolean  "choques_eletricos"
    t.boolean  "formigueiro"
    t.boolean  "picadas"
    t.boolean  "dormencia"
    t.boolean  "comichao"
    t.boolean  "hipoestesia_tato"
    t.boolean  "hipoestesia_picada"
    t.boolean  "friccao_leve"
    t.integer  "laudo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["laudo_id"], :name => "index_dados_dn4_on_laudo_id"
    t.foreign_key ["laudo_id"], "laudos", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "dados_dn4_ibfk_1"
  end

  create_table "dados_lanss", :force => true do |t|
    t.boolean  "dor_desagradavel"
    t.boolean  "pele_manchada"
    t.boolean  "pele_sensivel"
    t.boolean  "dor_repentina"
    t.boolean  "pele_queimacao"
    t.boolean  "alodinia"
    t.boolean  "alteracao_limiar"
    t.integer  "laudo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["laudo_id"], :name => "index_dados_lanss_on_laudo_id"
    t.foreign_key ["laudo_id"], "laudos", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "dados_lanss_ibfk_1"
  end

  create_table "dados_rx_torax", :force => true do |t|
    t.integer  "laudo_id"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["laudo_id"], :name => "index_dados_rx_torax_on_laudo_id"
    t.foreign_key ["laudo_id"], "laudos", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "dados_rx_torax_ibfk_1"
  end

  create_table "dados_sf36", :force => true do |t|
    t.integer  "laudo_id"
    t.float    "saude"
    t.integer  "comparacao_saude"
    t.integer  "atividades_vigorosas"
    t.integer  "atividades_moderadas"
    t.integer  "atividades_carregar_mantimentos"
    t.integer  "atividades_varios_lances_escada"
    t.integer  "atividades_um_lance_escada"
    t.integer  "atividades_ajoelhar"
    t.integer  "atividades_andar_mais_de_1_km"
    t.integer  "atividades_varios_quarteiroes"
    t.integer  "atividades_um_quarteirao"
    t.integer  "atividades_banho"
    t.integer  "fisico_menos_tempo_trabalho"
    t.integer  "fisico_menos_tarefas"
    t.integer  "fisico_limitado"
    t.integer  "fisico_dificuldade"
    t.integer  "emocional_menos_tempo_trabalho"
    t.integer  "emocional_menos_tarefas"
    t.integer  "emocional_nao_realizou_tarefas"
    t.integer  "social_atividade"
    t.float    "dor"
    t.float    "interferencia_dor"
    t.integer  "sentimento_vigor"
    t.integer  "sentimento_nervoso"
    t.integer  "sentimento_deprimido"
    t.integer  "sentimento_calmo"
    t.integer  "sentimento_energico"
    t.integer  "sentimento_abatido"
    t.integer  "sentimento_esgotado"
    t.integer  "sentimento_feliz"
    t.integer  "sentimento_cansado"
    t.integer  "social_visita"
    t.integer  "adoece_facilmente"
    t.integer  "saudavel"
    t.integer  "saude_vai_piorar"
    t.integer  "saude_excelente"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["laudo_id"], :name => "index_dados_sf36_on_laudo_id"
    t.foreign_key ["laudo_id"], "laudos", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "dados_sf36_ibfk_1"
  end

  create_table "municipios", :force => true do |t|
    t.string   "nome"
    t.integer  "uf_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["uf_id"], :name => "index_municipios_on_uf_id"
    t.foreign_key ["uf_id"], "ufs", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "municipios_ibfk_1"
  end

  create_table "enderecos", :force => true do |t|
    t.string   "logradouro"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cep"
    t.integer  "municipio_id"
    t.integer  "enderecavel_id"
    t.string   "enderecavel_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["municipio_id"], :name => "index_enderecos_on_municipio_id"
    t.foreign_key ["municipio_id"], "municipios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "enderecos_ibfk_1"
  end

  create_table "evento_adverso_graves", :force => true do |t|
    t.boolean  "obito"
    t.boolean  "ameaca_vida"
    t.boolean  "invalidez"
    t.boolean  "anomalia_congenita"
    t.boolean  "hospitalizacao"
    t.text     "observacoes"
    t.date     "data"
    t.integer  "voluntario_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["voluntario_id"], :name => "index_evento_adverso_graves_on_voluntario_id"
    t.index ["usuario_id"], :name => "index_evento_adverso_graves_on_usuario_id"
    t.foreign_key ["voluntario_id"], "voluntarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "evento_adverso_graves_ibfk_1"
    t.foreign_key ["usuario_id"], "usuarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "evento_adverso_graves_ibfk_2"
  end

  create_table "evento_adversos", :force => true do |t|
    t.integer  "sinal_desfavoravel"
    t.boolean  "sinal_desfavoravel_bool"
    t.integer  "sintoma_temporario"
    t.boolean  "sintoma_temporario_bool"
    t.integer  "procedimento_cirurgico"
    t.boolean  "procedimento_cirurgico_bool"
    t.integer  "valores_fora_da_referencia"
    t.boolean  "valores_fora_da_referencia_bool"
    t.integer  "valores_alterados"
    t.boolean  "valores_alterados_bool"
    t.integer  "achados_fisicos"
    t.boolean  "achados_fisicos_bool"
    t.text     "observacoes"
    t.date     "data"
    t.integer  "voluntario_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["voluntario_id"], :name => "index_evento_adversos_on_voluntario_id"
    t.index ["usuario_id"], :name => "index_evento_adversos_on_usuario_id"
    t.foreign_key ["voluntario_id"], "voluntarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "evento_adversos_ibfk_1"
    t.foreign_key ["usuario_id"], "usuarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "evento_adversos_ibfk_2"
  end

  create_table "exame_fisicos", :force => true do |t|
    t.text     "ectoscopia"
    t.text     "exame_cardiovascular"
    t.text     "exame_respiratorio"
    t.text     "exame_abdome"
    t.text     "exame_marcha"
    t.text     "estatica"
    t.text     "nervos_cranianos"
    t.text     "sensibilidade_superficial"
    t.date     "data"
    t.integer  "avaliacao_clinica_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["avaliacao_clinica_id"], :name => "index_exame_fisicos_on_avaliacao_clinica_id"
    t.foreign_key ["avaliacao_clinica_id"], "avaliacao_clinicas", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "exame_fisicos_ibfk_1"
  end

  create_table "exame_complementos", :force => true do |t|
    t.integer  "aducao_interosseos_ulnar"
    t.integer  "abducao_interosseos_ulnar"
    t.integer  "flexor_carpo_ulnar"
    t.integer  "opositor_polegar_mediano"
    t.integer  "abdutor_polegar_mediano"
    t.integer  "flexor_polegar_mediano"
    t.integer  "flexor_digital_mediano"
    t.integer  "pronador_mediano"
    t.integer  "extensor_polegar_interosseo_posterior"
    t.integer  "extensor_digital_interosseo_posterior"
    t.integer  "supinador_radial"
    t.integer  "triceps_radial"
    t.integer  "deltoide_axilar"
    t.integer  "biceps_musculocutaneo"
    t.integer  "grande_dorsal_toraco_dorsal"
    t.integer  "extensor_fibular_profundo"
    t.integer  "longo_fibular_superficial"
    t.integer  "tibial_fibular_profundo"
    t.integer  "posterior_tibial"
    t.integer  "flexor_digital_tibial"
    t.integer  "gastrocnemio_tibial"
    t.integer  "biceps_coxa_ciatico"
    t.integer  "quadriceps_femoral"
    t.integer  "iliopsoas_interosseo_posterior"
    t.integer  "adutores_femoral"
    t.integer  "gluteos_obturador"
    t.integer  "triceps_gluteo_superior"
    t.text     "reflexos_profundos"
    t.text     "reflexos_superficiais"
    t.text     "esfincteres"
    t.text     "coordenacao"
    t.text     "tonus_muscular"
    t.boolean  "espessamento_nervo"
    t.text     "nervo_espessado"
    t.integer  "exame_fisico_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["exame_fisico_id"], :name => "index_exame_complementos_on_exame_fisico_id"
    t.foreign_key ["exame_fisico_id"], "exame_fisicos", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "exame_complementos_ibfk_1"
  end

  create_table "gravidezes", :force => true do |t|
    t.date     "data"
    t.integer  "voluntario_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["voluntario_id"], :name => "index_gravidezes_on_voluntario_id"
    t.index ["usuario_id"], :name => "index_gravidezes_on_usuario_id"
    t.foreign_key ["voluntario_id"], "voluntarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "gravidezes_ibfk_1"
    t.foreign_key ["usuario_id"], "usuarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "gravidezes_ibfk_2"
  end

  create_table "inclusoes", :force => true do |t|
    t.boolean  "incluido"
    t.string   "motivo"
    t.integer  "voluntario_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["voluntario_id"], :name => "index_inclusoes_on_voluntario_id"
    t.index ["usuario_id"], :name => "index_inclusoes_on_usuario_id"
    t.foreign_key ["voluntario_id"], "voluntarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "inclusoes_ibfk_1"
    t.foreign_key ["usuario_id"], "usuarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "inclusoes_ibfk_2"
  end

  create_table "superdoses", :force => true do |t|
    t.text     "observacoes"
    t.date     "data"
    t.integer  "voluntario_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["voluntario_id"], :name => "index_superdoses_on_voluntario_id"
    t.index ["usuario_id"], :name => "index_superdoses_on_usuario_id"
    t.foreign_key ["voluntario_id"], "voluntarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "superdoses_ibfk_1"
    t.foreign_key ["usuario_id"], "usuarios", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "superdoses_ibfk_2"
  end

end

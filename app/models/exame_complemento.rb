class ExameComplemento < ActiveRecord::Base
  belongs_to :exame_fisico

  validates :exame_fisico,                         :presence => true

  validates :aducao_interosseos_ulnar,             :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :abducao_interosseos_ulnar,            :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :flexor_carpo_ulnar,                   :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :opositor_polegar_mediano,             :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :flexor_polegar_mediano,               :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :flexor_digital_mediano,               :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :pronador_mediano,                     :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :extensor_polegar_interosseo_posterior,:allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :extensor_digital_interosseo_posterior,:allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :supinador_radial,                     :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :triceps_radial,                       :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :deltoide_axilar,                      :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :biceps_musculocutaneo,                :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :grande_dorsal_toraco_dorsal,          :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :extensor_fibular_profundo,            :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :longo_fibular_superficial,            :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :tibial_fibular_profundo,              :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :posterior_tibial,                     :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :flexor_digital_tibial,                :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :gastrocnemio_tibial,                  :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :biceps_coxa_ciatico,                  :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :quadriceps_femoral,                   :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :iliopsoas_interosseo_posterior,       :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :adutores_femoral,                     :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  validates :gluteos_obturador,                    :allow_blank => true,         :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }

#  validates :reflexos_profundos,                     :presence => true
#  validates :reflexos_superficiais,                  :presence => true

#  validates :esfincteres,                            :presence => true

#  validates :coordenacao,                            :presence => true

#  validates :tonus_muscular,                         :presence => true

#  validates :espessamento_nervo,                     :presence => true



end

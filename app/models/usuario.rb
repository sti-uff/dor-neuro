class Usuario < ActiveRecord::Base
  belongs_to :profissao
  belongs_to :centro
  belongs_to :cargo
  has_many :criterios
  has_many :inclusoes
  has_many :laudos
  has_many :avaliacao_clinicas
  has_many :evento_adversos
  has_many :gravidezes
  has_many :superdoses
  has_many :evento_adverso_graves
  has_many :dispensacoes
  has_many :adesoes
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :nome, :celular, :registro,
    :centro_id, :cargo_id, :profissao_id
end

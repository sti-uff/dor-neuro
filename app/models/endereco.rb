class Endereco < ActiveRecord::Base
  belongs_to :enderecavel, :polymorphic => true
  belongs_to :municipio
  
  accepts_nested_attributes_for :municipio
  
  validates :logradouro, :presence => true
  validates :bairro,     :presence => true
  validates :cep,        :presence => true
  validates :municipio,  :presence => true

  def token_municipio
    if self.municipio
      Array(self.municipio).collect { |m| { :id => m.id, :name => "#{m.nome} - #{m.uf.sigla}" } }.to_json
    else
      nil
    end
  end
  
  def to_s
    complemento = !self.complemento.blank? ? "#{self.complemento}, " : ''
    municipio = self.municipio ? "#{self.municipio.nome} - #{self.municipio.uf.sigla}" : ''
    "#{self.logradouro} #{complemento}, #{self.bairro}, #{municipio}"
  end
  
end

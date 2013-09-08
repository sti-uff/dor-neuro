# encoding: utf-8
require 'rubygems'
require 'httparty'

class SmsHumanException < RuntimeError
end

class SmsHuman
  include HTTParty
  #Manual de integracao da Human
  #http://www.human.com.br/sms_gateway_examples/human_gateway_manual_de_integracao_pt.pdf
  
  base_uri "http://system.human.com.br/GatewayIntegration/msgSms.do"
  DEFAULT_OPTIONS = { :dispatch => "send", 
                      :account  => "user",
                      :code     => "password"}
  MSG_LIMIT = 140
  CEL_NUMBER_LENGTH = "001122223333".length

  default_params DEFAULT_OPTIONS

  def self.enviar_sms(celular, id, texto, gerar_excecao = false)
    id = "dorneuro#{id}"
    unless Rails.env == 'production'
      return false #comentar caso queira testar em desenv
      id = "teste#{id}"
      # puts "id = #{id}"
    end

    if celular and celular.length == CEL_NUMBER_LENGTH - 2
      celular = "55#{celular}"
    end

    if !celular || celular.length != CEL_NUMBER_LENGTH
      if gerar_excecao
        raise SmsException, "Celular com menos de 10 dígitos: #{celular}"
      end
      return false
    end

    if !texto || texto.length > MSG_LIMIT
      if gerar_excecao
        raise SmsException, "O SMS deve ter até #{MSG_LIMIT} caracteres"
      end
      return false
    end

    tentativas = 0

    begin
      post('',
        :query => {
          :to   => celular,
          :id   => id,
          :msg  => texto
        })
    rescue EOFError
      tentativas == 3 ? raise : (tentativas += 1; retry)
    rescue Timeout::Error
      tentativas == 3 ? raise : (tentativas += 1; retry)
    rescue SocketError
      tentativas == 3 ? raise : (tentativas += 1; retry)
    end
  end
  
end
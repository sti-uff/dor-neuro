task :enviar_sms => :environment do

  # Time.zone = 'UTC'
  # c = Controle.first
  # 
  # puts "=================="
  # puts "RELATORIO"
  # puts "=================="
  # SmsHuman.analisar_relatorio

  # puts "=================="
  # puts "PRESCRICAO"
  # puts "=================="
  agendamentos = AgendamentoSms.pendentes.where('data_hora > ? and data_hora <= ?',
    5.minutes.ago.in_time_zone('UTC'),
    10.minutes.since.in_time_zone('UTC')).
    includes({:dispensacao => {:dispensavel => :voluntario}})
  agendamentos.each do |ag|
    celular = ag.dispensacao.dispensavel.voluntario.celular.delete("^0-9")
    SmsHuman.enviar_sms(celular, ag.id, ag.texto)
    ag.status = Agendamento::ENVIANDO
    ag.save
  end
  # c.dt_hora_ult_envio = Time.now
  # c.save
  
end
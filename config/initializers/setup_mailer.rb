class DevelopmentMailInterceptor
  def self.delivering_email(message)
    if Rails.env.development? || Rails.env == 'homologacao'
      message.subject = "[#{Rails.env}] [#{message.to}] #{message.subject}"
      message.to = "dorneuro.rails@gmail.com"
      message.bcc = []
    else
      if message.to.blank? && message.bcc.empty?
        message.perform_deliveries= false
      end
    end
  end
end

ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor)

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "dorneuro.rails",
  :password             => "dorneurorails",
  :authentication       => "plain",
  :enable_starttls_auto => true
}


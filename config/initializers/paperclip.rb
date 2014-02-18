if Rails.env == "production" || Rails.env == "homologacao"
  Paperclip::Attachment.default_options.merge!(
    :path => "/storage/dor-neuro/:attachment/:id/:style/:basename.:extension",
    :url => "/dorneuro/:attachment/:id/:style/:basename.:extension"
  )
else
  Paperclip::Attachment.default_options.merge!(
    :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension",
    :url => "/system/:attachment/:id/:style/:basename.:extension"
  )
end
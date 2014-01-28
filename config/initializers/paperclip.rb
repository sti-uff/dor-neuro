Paperclip::Attachment.default_options.merge!(
    :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension",
    :url => "/dorneuro/system/:attachment/:id/:style/:basename.:extension"
)
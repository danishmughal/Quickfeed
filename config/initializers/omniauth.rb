OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '440059926077610', 'b92852410ad6cc9cc04df17cf3715c3e', :scope => 'read_stream', :display => "popup"
end
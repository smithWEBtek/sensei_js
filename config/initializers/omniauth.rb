OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '962223945781-h3v9ucjt1vcj9n7cjfkur768necr16la.apps.googleusercontent.com', 'srttsejf9L1UgJ0lJitqn1zp', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end

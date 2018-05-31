OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '962223945781-bk9sa8hmrem1mnt61j9udcnocl592551.apps.googleusercontent.com', '6FlCiC4eKt1k0EoOMO_lQoQr', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end

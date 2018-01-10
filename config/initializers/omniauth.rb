OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '37896715551-sol6uh176h95qh74q6ag1rv2ucfnua96.apps.googleusercontent.com', 'O2tlVrk3TbzZeSD1JkIoUl-w', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
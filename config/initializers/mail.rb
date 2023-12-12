if Rails.env.production?
  Rails.application.configure do
    config.action_mailer.delivery_method = :mailpace
    config.action_mailer.mailpace_settings = {api_token: Rails.application.credentials.mailpace_api_token}
    config.action_mailer.default_url_options = {host: "beginnerbounties.com"}
  end
end

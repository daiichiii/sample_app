require_relative 'application_record'
class Micropost < ApplicationRecord
  belongs_to :user
end

Rails.application.configure do
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  host = 'https://rails-sample-app-gw0e.onrender.com'  # レンダーのホスト名に変更してください
  config.action_mailer.default_url_options = { host: host }
  ActionMailer::Base.smtp_settings = {
    port:           587,
    address:        'smtp.mailgun.org',
    user_name:      ENV['MAILGUN_SMTP_LOGIN'],
    password:       ENV['MAILGUN_SMTP_PASSWORD'],
    domain:         'your-domain.com',  # メール送信元のドメインに変更してください
    authentication: :plain,
  }
end

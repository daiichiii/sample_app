class Micropost < ApplicationRecord
  belongs_to :user
end
Rails.application.configure do
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  host = '<https://dashboard.render.com/web/srv-ckcl1fmsmu8c73d9ktug/deploys/dep-cm83bp21hbls73av8ll0>.onrender.com'
  config.action_mailer.default_url_options = { host: host }
  ActionMailer::Base.smtp_settings = {
    :port           => 587,
    :address        => 'smtp.mailgun.org',
    :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
    :password       => ENV['MAILGUN_SMTP_PASSWORD'],
    :domain         => host,
    :authentication => :plain,
  }
end
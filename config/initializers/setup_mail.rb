if Rails.env.development? || Rails.env.production?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:        'smtp.gmail.com',
    port:           '587',
    authentication: :plain,
    user_name:      'sunnydgoswami@gmail.com',
    password:       'focused01',
    domain:         'mail.google.com',
    enable_starttls_auto: true
  }
end

# if Rails.env.development? || Rails.env.production?
#   ActionMailer::Base.delivery_method = :smtp
#   ActionMailer::Base.smtp_settings = {
#     address:        'smtp.sendgrid.net',
#     port:           '2525',
#     authentication: :plain,
#     user_name:      ENV['SENDGRID_USERNAME'],
#     password:       ENV['SENDGRID_PASSWORD'],
#     domain:         'heroku.com',
#     enable_starttls_auto: true
#   }
# end
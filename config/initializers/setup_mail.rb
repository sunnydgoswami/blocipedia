# if Rails.env.development? || Rails.env.production?
#   ActionMailer::Base.delivery_method = :smtp
#   ActionMailer::Base.smtp_settings = {
#     address:        'smtp.gmail.com',
#     port:           '587',
#     authentication: :plain,
#     user_name:      'sunnydgoswami@gmail.com',
#     password:       'Ferrari6',
#     domain:         'mail.google.com',
#     enable_starttls_auto: true
#   }
# end

if Rails.env.development? || Rails.env.production?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:        'smtp.sendgrid.net',
    port:           '2525',
    authentication: :plain,
    user_name:      'app75808964@heroku.com',
    password:       'xbmpmlcw1879',
    domain:         'heroku.com',
    enable_starttls_auto: true
  }
end
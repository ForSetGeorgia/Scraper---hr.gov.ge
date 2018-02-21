if environment_is_production
  Mail.defaults do
    delivery_method :smtp,
                    address: ENV['FEEDBACK_SMTP_ADDRESS'],
                    port: '587',
                    user_name: ENV['FEEDBACK_SMTP_AUTH_USER'],
                    password: ENV['FEEDBACK_SMTP_AUTH_PASSWORD'],
                    authentication: :plain,
                    enable_starttls_auto: true
  end
else
  Mail.defaults do
    delivery_method :smtp,
                    address: 'localhost',
                    port: 1025
  end
end

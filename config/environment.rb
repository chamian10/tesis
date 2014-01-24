# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Tesis::Application.initialize!


#Added per active admin install instructions
#config.action_mailer.default_url_options = { :host => 'localhost:3000' }


#These settings are for the sending out email for active admin and consequently the   devise mailer
#ActionMailer::Base.delivery_method = :smtp
#ActionMailer::Base.perform_deliveries = true
#ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.smtp_settings =
    {

        :address            => 'smtp.gmail.com',
        :port               => 587,
        :domain             => 'gmail.com', #you can also use google.com
        :authentication     => :plain,
        :user_name          => 'damianminniti@gmail.com',
        :password           => 'mignini10'
    }
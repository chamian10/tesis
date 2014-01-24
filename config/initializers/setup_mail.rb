ActionMailer::Base.smtp_settings = {
    :address              => "sv50.byethost50.org",
    :port                 => 465,
    :domain               => "damianminniti.com.ar",
    :user_name            => "paginasweb@damianminniti.com.ar",
    :password             => "mignini10",
    :authentication       => "plain",
    :enable_starttls_auto => true
}

#ActionMailer::Base.default_url_options[:host] = "localhost:3000"
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
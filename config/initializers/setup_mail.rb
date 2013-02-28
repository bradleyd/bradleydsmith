ActionMailer::Base.smtp_settings = {
  :address              => "localhost",
  :port                 => 25,
  :domain               => "bradleydsmith.com",
  :enable_starttls_auto => true,
  :openssl_verify_mode => 'none' 
}

ActionMailer::Base.default_url_options[:host] = "scratch.bradleydsmith.com"

# config/initializers/pony.#!/usr/bin/env ruby -wKU

Pony.mail(
  :to => 'twasden@gmail.com',
  :via => :smtp,
  :via_options => {
    :address        => 'smtp.sendgrid.net',
    :port         => 587,
    :enable_starttls_auto => true,
    :user_name          => ENV['SENDGRID_USERNAME'],
    :password       => ENV['SENDGRID_PASSWORD'],
    :authentication     => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain         => 'herokuapp.com'  

  }
)

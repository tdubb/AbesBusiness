# config/initializers/pony.#!/usr/bin/env ruby -wKU

Pony.mail(
  :to => 'twasden@gmail.com',
  :via => :smtp,
  :via_options => {
    :address        => 'smtp.gmail.com',
    :port         => 587,
    :enable_starttls_auto => true,
    :user_name          => 'twasden@gmail.com',
    :password       => '0YlISEFTWTo2',
    :authentication     => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain         => 'heroku.com'  

  }
)

Install Settings
============

This is a recipe to install locostore in Heroku

````ruby
  # create the heroku app
  heroku create APP_NAME
  heroku addons:add heroku-postgresql

  # add some useful addons
  heroku addons:add newrelic:stark
  heroku addons:add raygun
  heroku addons:add pgbackups:auto-week
  heroku addons:add papertrail
  heroku addons:add sendgrid
  heroku addons:add gemfury
  heroku addons:add zerigo_dns
  heroku addons:add bounscale

  # or oneliner
  heroku addons:add newrelic:stark && heroku addons:add raygun && heroku addons:add pgbackups:auto-week && heroku addons:add papertrail && heroku addons:add sendgrid && heroku addons:add gemfury && heroku addons:add zerigo_dns && heroku addons:add bounscale

  # note we add gemfury. This allow us to use it to save custom store theme without need a private repo

  # if store needs an ssl we use expedited addon
  heroku addons:add expeditedssl

  # run migrations
  heroku run rake db:migrate
  heroku run rake db:seed

  # set domains
  heroku domains:add www.yourdomain.com

````

After install addons the app need some configurations
=======

Access heroku app to config Raygun

    rails g raygun:install YOURAPIKEY

Set the corresponding AWS S3 credentials

    heroku config:add S3_BUCKET_NAME=xxx ASW_ACCESS_KEY_ID=xxxxxx
AWS_SECRET_ACCESS_KEY=xxxxx

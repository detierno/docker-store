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

  # or oneliner
  heroku addons:add newrelic:stark && heroku addons:add raygun && heroku addons:add pgbackups:auto-week && heroku addons:add papertrail && heroku addons:add sendgrid && heroku addons:add gemfury

  # we can use gemfury to save custom store theme

  # if store needs an ssl we use expedited addon
  heroku addons:add expeditedssl

  # run migrations
  heroku run rake db:migrate
  heroku run rake db:seed

  # set domains
  heroku domains:add www.yourdomain.com

  # set asset store on S3
````

After install addons the app need some configurations
=======

Access heroku app to config Raygun

    rails g raygun:install YOURAPIKEY



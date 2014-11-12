# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  config.logo = "logo.png"
  # config.track_inventory_levels = false
  config.use_s3 = true
  config.s3_bucket = "locoloja"
  config.s3_access_key = "AKIAJ4WRBVUMLKC7TE2A"
  config.s3_secret = "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"
end

Spree.user_class = "Spree::User"

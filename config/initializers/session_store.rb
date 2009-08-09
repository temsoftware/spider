# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_spider_session',
  :secret      => 'de6edb90d8559f5473621892d3bc030de63c9967101a684710b1aa3d47700d8dba5ccc3861dd2e441e608d77bbe2c1e600fdd3ca0379bb5f1408cb21aac8e5c4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

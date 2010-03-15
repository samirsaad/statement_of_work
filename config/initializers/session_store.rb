# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sow_session',
  :secret      => 'ce3d4e84ad54237461b0ee59973c01132ea6868a5c44f88e9661c33987f5aacbb50d67fbb01e0793d5f7782b16d8f9fc054fdf09f1aa975504d3ab50db11d09b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

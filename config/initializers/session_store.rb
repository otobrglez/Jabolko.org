# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jabolko_session',
  :secret      => '23897493dae30268be6771b19c6131cfce35cfc0ef2c13923136414e680eb15857d25bf1e88991da051e5885b6db55e6eb1b27fdfc936cc59ce1be2c08bf2eb2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

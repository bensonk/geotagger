# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_geotagger_session',
  :secret      => '010857f4865d25ce544b3a51cf6f30cc39d7e03981502dfe2133ccb7541cf9d1636e83683281bd8c53ebfbc81a809e3c61cdf948f75d25259a196027bd98ec6f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

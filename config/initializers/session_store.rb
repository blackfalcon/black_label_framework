# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blacklabel_session',
  :secret      => 'f081f359f165706da400806e8de132645e92af45683cb9e0d664dedbdd7a89841c051dd7af0e0f4378bf29622fc2b354bdcd98dc9ac99d28ec1469a1f47fd6f6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

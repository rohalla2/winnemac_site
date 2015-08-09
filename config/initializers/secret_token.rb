# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
secret = Rails.env.production? ? ENV['SECRET_TOKEN'] : "d077ad9593587aa71e3f34771ba81fc90854178026d9b5395a11454b8ed0077151d960f050e62e029334990a6d6b279cfc432a0de043e47da21e24144f8e0767"

WinnemacSite::Application.config.secret_key_base = secret

# access_token = Ruby OAuth Gem access token

# global, default
Garb::Session.access_token = access_token

# instance
session = Garb::Session.new
session.access_token = access_token

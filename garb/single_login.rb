# global, default
Garb::Session.login('username', 'password')

# instance
session = Garb::Session.new
session.login('username', 'password')
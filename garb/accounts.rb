# global session
accounts = Garb::Account.all

# explicit session; better
accounts = Garb::Account.all(session)
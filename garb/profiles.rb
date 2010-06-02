account = accounts.first
puts account.id
puts account.name

profile = account.profiles.first
puts profile.web_property_id # UA-65432-1
puts profile.table_id # internal id for GA
puts profile.title
puts profile.account_name # matches account.name
puts profile.account_id # matches account.id

# Find the first profile with UA number, explicit session
profile = Profile.first('UA-65432-1', session)
# Find the first profile with this table id, global session
profile = Profile.first('1234567')

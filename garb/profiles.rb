account = accounts.first
puts account.id
puts account.name

profile = account.profiles.first
puts profile.table_id # internal id for GA
puts profile.title
puts profile.account_name # matches account.name
puts profile.account_id #matches account.id
puts profile.web_property_id # UA-65432-1

# Find the first profile with UA number
profile = Profile.first(‘UA-65432-1’)

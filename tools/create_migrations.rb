
# system 'rake db:create_migration NAME=create_users'
# system 'sleep 0.5'
# system 'rake db:create_migration NAME=create_tenants'
# system 'sleep 0.5'
# system 'rake db:create_migration NAME=create_listings'
# system 'sleep 0.5'
# system 'rake db:create_migration NAME=create_contracts'
# system 'sleep 0.5'
system 'rake db:create_migration NAME=update_listings'
system 'sleep 0.5'
system 'rake db:create_migration NAME=update_tenants'
system 'sleep 1'
system 'rake db:migrate:status'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create([:email => 'billy@bob.com', :password => 'billybob', :password_confirmation => 'billybob'])
User.create([:email => 'bob@billy.com', :password => 'billybob', :password_confirmation => 'billybob'])

Collection.create([name: 'SciFi'])
Collection.create([name: 'Mystery'])

# Author.create( [:name => 'Lee Child'])
# Author.create( [:name => 'David Wagner'])
#collection1 = Collection.create( :name => 'Crime', :user_id = User.first.user_id, :author_id = Author.first.author_id),
#collection2 = Collection.create( :name => 'SciFi', :user_id = User.first.user_id, :author_id = Author.last.author_id)

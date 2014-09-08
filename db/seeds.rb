# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1 = User.create! :name => 'John Doe', :email => 'john@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret',
user2 = User.create! :name => 'Billy Bob', :email => 'billy@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret',
author1 = Author.create! :name => 'Lee Child',
author2 = Author.create! :name => 'David Wagner',
collection1 = Collection.create! :name => 'Crime', :user_id = User.first.user_id, :author_id = Author.first.author_id,
collection2 = Collection.create! :name => 'SciFi', :user_id = User.first.user_id, :author_id = Author.second.author_id

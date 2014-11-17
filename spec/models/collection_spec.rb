require "rails_helper"

RSpec.describe Collection, :type => :model do
  it "should create a Collection with a name" do
    collection1 = Collection.create!( :name => 'Crime')
    expect(collection1.name).to eq('Crime')
  end
end






# collection1 = Collection.create!( :name => 'Crime', :user_id = User.first.user_id),


# collection1 = Collection.create( :name => 'Crime', :user_id = User.first.user_id, :author_id = Author.first.author_id),

# Author.create( [:name => 'Lee Child'])
# Author.create( [:name => 'David Wagner'])


# collection1 = Collection.create( :name => 'Crime', :user_id = User.first.user_id, :author_id = Author.first.author_id),




# RSpec.describe User, :type => :model do
#   it "orders by last name" do
#     lindeman = User.create!(first_name: "Andy", last_name: "Lindeman")
#     chelimsky = User.create!(first_name: "David", last_name: "Chelimsky")

#     expect(User.ordered_by_last_name).to eq([chelimsky, lindeman])
#   end
# end
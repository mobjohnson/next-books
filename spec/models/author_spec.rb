require "rails_helper"

RSpec.describe Author, :type => :model do
  it "should create an Author with a name" do
    author1 = Author.create!( :name => 'Lee Child')
    expect(author1.name).to eq('Lee Child')
  end
end

# RSpec.describe Author, :type => :model do
#   it "orders by last name" do
#     lindeman = User.create!(first_name: "Andy", last_name: "Lindeman")
#     chelimsky = User.create!(first_name: "David", last_name: "Chelimsky")

#     expect(User.ordered_by_last_name).to eq([chelimsky, lindeman])
#   end
# end


# RSpec.describe User, :type => :model do
#   it "orders by last name" do
#     lindeman = User.create!(first_name: "Andy", last_name: "Lindeman")
#     chelimsky = User.create!(first_name: "David", last_name: "Chelimsky")

#     expect(User.ordered_by_last_name).to eq([chelimsky, lindeman])
#   end
# end
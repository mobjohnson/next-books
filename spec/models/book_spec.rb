require "rails_helper"

RSpec.describe Book, :type => :model do
  it "should create an Book with a title" do
    book1 = Book.create!( :title => 'Gone Tomorrow')
    expect(book1.title).to eq('Gone Tomorrow')
  end
end

# RSpec.describe User, :type => :model do
#   it "orders by last name" do
#     lindeman = User.create!(first_name: "Andy", last_name: "Lindeman")
#     chelimsky = User.create!(first_name: "David", last_name: "Chelimsky")

#     expect(User.ordered_by_last_name).to eq([chelimsky, lindeman])
#   end
# end
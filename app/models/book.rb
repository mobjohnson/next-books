class Book < ActiveRecord::Base
	has_many :authors
  has_many :collections, through: :authors

	# validates :title, length: {minimum: 4}
  # validates :date, length: {minimum: 4}  

end
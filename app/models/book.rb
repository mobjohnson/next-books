class Book < ActiveRecord::Base
	belongs_to :author

	validates :title, length: {minimum: 4}
  validates :date, length: {minimum: 4}  

end
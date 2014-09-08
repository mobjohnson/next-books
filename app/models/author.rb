class Author < ActiveRecord::Base
	has_many :books
	belongs_to :collection

	validates :name, length: {minimum: 4}
end
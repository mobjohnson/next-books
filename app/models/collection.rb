class Collection < ActiveRecord::Base
	has_many :authors
	belongs_to :user
	has_many :books, through: :author

	# validates_associated :user
	# validates_associated :author
end
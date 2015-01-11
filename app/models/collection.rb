class Collection < ActiveRecord::Base
	belongs_to :user
  has_many :authors
	has_many :books, through: :authors

	# validates_associated :user
	# validates_associated :author
end
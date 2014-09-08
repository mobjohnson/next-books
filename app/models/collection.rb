class Collection < ActiveRecord::Base
	has_many :authors, dependent: :destroy
	belongs_to :user
	has_many :books, through: :author

	# validates_associated :user
	# validates_associated :author
end
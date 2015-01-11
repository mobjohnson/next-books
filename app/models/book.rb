class Book < ActiveRecord::Base
	belongs_to :author
  has_may :collections, through: :authors

	validates :title, length: {minimum: 4}
	# validates :synopsis, presence: true
	# validates :image, presence: true
	# validates :cover_url, presence: true
	# validates :isbn, presence: true


	# validates :date, presence: true
	# validates :status, presence: true
	# validates_associated :author
end
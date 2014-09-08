class Book < ActiveRecord::Base
	belongs_to :author

	validates :title, length: {minimum: 4}
	validates :synopsis, presence: true
	validates :image, presence: true
	validates :cover_url, presence: true
	validates :isbn, presence: true
	validates_associate :author
end
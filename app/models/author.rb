class Author < ActiveRecord::Base
	has_many :books
	belongs_to :collection

	validates :name, length: {minimum: 4}

	def self.find_books
		# @collection = Collection.find(params[:collection_id])
		# @author = @collection.authors.find(params[:id])
		@collection = Collection.first
		@author = @collection.authors.first
		@key = 'JBdCSEmPL5uPlM3IYj4lw'
		@name = @author.name.gsub(' ', '%20')
 		@request = "https://www.goodreads.com/search.xml?format=json&key=#{@key}&q=#{@name}"
		@response = HTTParty.get "#{@request}"
		@book_array = @response['GoodreadsResponse']['search']['results']['work']
		###this starts an array?

		# p @response
	end
end
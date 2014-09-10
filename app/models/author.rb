class Author < ActiveRecord::Base
	has_many :books, dependent: :destroy
	belongs_to :collection

	validates :name, length: {minimum: 4}

	after_save :save_books

	def save_books
		@author = self[:id]
		@key = 'JBdCSEmPL5uPlM3IYj4lw'
		@name = self.name.gsub(' ', '%20')
 		@request = "https://www.goodreads.com/search.xml?format=json&key=#{@key}&q=#{@name}"
		@response = HTTParty.get "#{@request}"
		@book_array = @response['GoodreadsResponse']['search']['results']['work']
		@book_array.each do |book|
			@book_title = book['best_book']['title']
			@book_year = book['original_publication_year'].to_s
			@book_status = 'not read'
			@book = Book.create(title: @book_title, date: @book_year, status: @book_status, author_id: @author)
		end
	end
end
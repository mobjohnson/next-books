class Author < ActiveRecord::Base
	has_many :books, dependent: :destroy
	belongs_to :collection

	validates :name, length: {minimum: 4}

	after_save :save_books

	def save_books
		@author = self[:id]
		# Goodreads API key: need to hide this later
		@key = 'JBdCSEmPL5uPlM3IYj4lw'
		# Name of Author for books query
		@name = self.name.gsub(' ', '%20')
 		@request = "https://www.goodreads.com/search.xml?format=json&key=#{@key}&q=#{@name}"
		@response = HTTParty.get "#{@request}"
		# Array of books from API call
		@book_array = @response['GoodreadsResponse']['search']['results']['work']
		@book_array.each do |book|
			# Book title
			@book_title = book['best_book']['title']
			# Year book was published
			@book_year = book['original_publication_year'].to_s
			# Initialize status with 'not read'
			@book_status = 'not read'
			# Instantiate book
			@book = Book.create(title: @book_title, date: @book_year, status: @book_status, author_id: @author)
		end
	end

	def self.find_book(author)
		@books = author.books
		# sorts books by date
		@books = @books.sort_by {|book|	book.date}
		@flag = 'start'
		# Finds the next book that has not been started or read
		@books.each do |book|
			if book.status == 'not read' && @flag == 'start'
				@flag = 'finish'
				@next_book = book
			end
		end
		@next_book
	end

end
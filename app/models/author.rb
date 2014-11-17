class Author < ActiveRecord::Base
	has_and_belongs_to_many :books
	has_and_belongs_to_many :collections

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

	def self.find_book(author)
		@books = author.books
		@books = @books.sort_by {|book|	book.date}
		@flag = 'start'
		@books.each do |book|
			if book.status == 'not read' && @flag == 'start'
				@flag = 'finish'
				@next_book = book
			end
		end
		@next_book
	end

end
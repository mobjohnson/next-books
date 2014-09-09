class BooksController < ApplicationController

	# require 'json/add/rails'

	def create
		@author = Author.find(params[:author_id])
		find_books
		@book = @author.books.create(book_params)
		redirect_to author_path(@author)
	end

	def destroy
		@author = Author.find(params[:author_id])
		@book = @author.books.find(params[:id])
		@book.destroy
		redirect_to author_path(@author)
	end

	private

	def book_params
		params.require(:book).permit(:title, :date, :synopsis, :cover_id, :isbn) 
	end

end
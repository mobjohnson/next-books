class BooksController < ApplicationController

	def edit 
		@author = Author.find(params[:author_id])		
		@book = Book.find(params[:id])
		# redirect_to author_path(@author)

		redirect_to collection_path(@collection)
	end

	def update
		@author = Author.find(params[:author_id])	
		@book = @author.books.update(book_params)
		# @book.update
		redirect_to collection_path(@collection)

	end


	def create
		@author = Author.find(params[:author_id])
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
		params.require(:book).permit(:title, :date, :status) 
	end

end
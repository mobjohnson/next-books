class BooksController < ApplicationController

	def edit
		@collection = Collection.find(params[:collection_id])
		@author = Author.find(params[:author_id])		
		@book = Book.find(params[:id])
	end

	def update
		@collection = Collection.find(params[:collection_id])
		@author = Author.find(params[:author_id])	
 	  @book = Book.find(params[:id])
		@book.update(status: params[:status])
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
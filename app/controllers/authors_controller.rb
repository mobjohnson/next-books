class AuthorsController < ApplicationController
	before_action :authenticate_user!, except: [:show, :index]

	def new
		@author = Author.new
	end

	def create
		# @collection = Collection.find(params[:collection_id])
		# @author = @collection.authors.create(author_params)

		@author = Author.new(author_params)
	  redirect_to collection_path(@collection)
	end

	def destroy
		@collection = Collection.find(params[:collection_id])
		@author = @collection.authors.find(params[:id])
		@author.destroy
		redirect_to collection_path(@collection)
	end

	private

	def author_params
		params.require(:author).permit(:name) 
	end

end
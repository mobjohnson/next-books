class AuthorsController < ApplicationController
	before_action :authenticate_user!, except: [:show, :index]

	def create
		@collection = Collection.find(params[:collection_id])
		@author = @collection.authors.create(author_params)
		redirect_to collection_path(@collection)
	end

	def destroy
		@collection = Collection.find(params[:collection_id])
		@author = @collection.authors.find(params[:id])
		@author.destroy
		redirect_to collection_path(@collection)
	end

	def self.find_books
		# @collection = Collection.find(params[:collection_id])
		# @author = @collection.authors.find(params[:id])
		@collection = Collection.first
		@author = @collection.authors.first
		@key = 'JBdCSEmPL5uPlM3IYj4lw'
		@name = @author.name.gsub(' ', '%20')
 		@request = "https://www.goodreads.com/search.xml?format=json&key=#{@key}&q=#{@name}"
		@response = HTTParty.get "#{@request}"



		# p @response
	end

	private

	def author_params
		params.require(:author).permit(:name) 
	end

end
class ArtistsController < ApplicationController
	before_action :authenticate_user!, except: [:show, :index]

	def index
		@authors = Author.all
	end

	def new
		@author =Author.new
	end

	def show
		@author = Author.find(params[:id])
	end

	def edit
		@author = Author.find(params[:id])
	end

	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to @author
		else
			render :new
		end
	end

	def update
		@author = Author.find(params[:id])
		if @author.update(author_params)
			redirect_to @author
		else
			render :edit
		end
	end

	def destroy
		@author = Author.find(params[:id])
		@author.destroy
		redirect_to authors_url
	end

	private

	def author_params
		params.require(:author).permit(:name, :user_id, :author_id)
	end

end
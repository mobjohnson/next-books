class CollectionsController < ApplicationController

	before_action :authenticate_user!, except: [:show, :index]

	def index
		@collections = Collection.all
	end

	def new
		@collection =Collection.new
	end

	def show
		@collection = Collection.find(params[:id])
	end

	def edit
		@collection = Collection.find(params[:id])
	end

	def create
		@collection = Collection.new(collection_params)
		if @collection.save
			redirect_to @collection
		else
			render :new
		end
	end

	def update
		@collection = Collection.find(params[:id])
		if @collection.update(collection_params)
			redirect_to @collection
		else
			render :edit
		end
	end

	def destroy
		@collection = Collection.find(params[:id])
		@collection.destroy
		redirect_to collections_url
	end

	private

	def collections_params
		params.require(:collection).permit(:name, :user_id, :author_id)
	end
	
end
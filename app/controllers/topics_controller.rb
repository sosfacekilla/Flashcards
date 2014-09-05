class TopicsController < ApplicationController

	def index
		@topics = Topic.all

	end

    def show
		@topic = Topic.find(params[:id])
	end

	def new
		@topics = Topic.new
	end

	def create
		@topic = Topic.create(params.require(:topic).permit(:name, :word))
		redirect_to topics_path
	end

	def edit
		@topic = Topic.find(params[:id])
	end

	def update
		@topic = Topic.find(params[:id])
		if
			Topic.create(params.require(:topic).permit(:name, :word))
			redirect_to topics_path
		else
			render 'edit'
		end
	end

	def destroy
		@topic = Topic.find(params[:id])
		@topic.destroy
		redirect_to topics_path
	end
end
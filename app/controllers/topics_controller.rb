class TopicsController < ApplicationController

	def index
		@topics = Topic.all
		@words = Word.all

	end

    def show
		@topic = Topic.find(params[:id])
		@words = Word.all
		@words = @words.where(topic_id: @topic.id)
	end

	def new
		@topic = Topic.new
		@word = Word.new
	end

	def create
		@topic = Topic.create(params.require(:topic).permit(:name))
		redirect_to topics_path
	end

	def edit
        @topic = Topic.find(params[:id])
		@words = Word.all
		@words = @words.where(topic_id: @topic.id)
	end

	def update
		@topic = Topic.find(params[:id])
		if
			Topic.create(params.require(:topic).permit(:name))
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




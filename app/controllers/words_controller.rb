class WordsController < ApplicationController

	def index
		@words = Word.all
	end

    def show
    	@topic = Topic.find(params[:topic_id])
		@word = Word.find(params[:id])

	end

	def new
	    @topic = Topic.find(params[:topic_id])
		@word = Word.new
	end

	def create
		@topic = Topic.find(params[:topic_id])
		@word = Word.new(word_params)
		if @word.save
			redirect_to topics_path
		else
			render 'edit'
		end
	end


	def edit
		@topic = Topic.find(params[:topic_id])
		@word = Word.find(params[:id])
	end

	def update
		@word = Word.find(params[:id])
		if
			Word.create(params.require(:word).permit(:name, :definition, :example, :topic_id))
			redirect_to words_path
		else
			render 'edit'
		end
	end

	def destroy
		@word = Word.find(params[:id])
		@word.destroy
		redirect_to topics_word_path
	end

	private

		def word_params
			params.require(:word).permit(:name, :definition, :example, :topic_id)
	end

end








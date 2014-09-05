class WordsController < ApplicationController

	def index
		@words = Word.all
	end

    def show
		@word = Word.find(params[:id])
	end

	def new
		@words = Word.new
	end

	def create
		Word.create(params.require(:word).permit(:name, :definition, :example))
		redirect_to topics_path
	end

	def edit
		@word = Word.find(params[:id])
	end

	def update
		@word = Word.find(params[:id])
		if
			Word.create(params.require(:word).permit(:name, :definition, :example))
			redirect_to words_path
		else
			render 'edit'
		end
	end

	def destroy
		@word = Word.find(params[:id])
		@word.destroy
		redirect_to words_path
	end
end


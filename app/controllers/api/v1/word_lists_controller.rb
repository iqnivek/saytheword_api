class Api::V1::WordListsController < ApplicationController
  def create
    list = WordList.new(name: params[:name])

    word_list_params[:words].each do |word|
      list.words.build(word: word)
    end

    if list.save
      render json: list
    else
      # TODO
    end
  end

  def show
    list = WordList.find(params[:id])
    render json: list
  end

  private

    def word_list_params
      params.require(:word_list).permit(:name, :words)
    end
end

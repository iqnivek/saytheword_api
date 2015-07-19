class Api::V1::WordListsController < ApplicationController
  # TODO add this back when auth implemented
  skip_before_filter :verify_authenticity_token

  def show
    list = WordList.find(params[:id])
    render json: list
  end

  def create
    list = WordList.new(word_list_params)
    if list.save
      render json: list
    else
      # TODO
    end
  end

  def update
    list = WordList.find(params[:id])
    list.words.destroy  # TODO improve by passing ids in serialization

    if list.update(word_list_params)
      render json: list
    else
      # TODO
    end
  end

  private

    def word_list_params
      prs = params.require(:word_list).permit(:name, :words)
      prs[:words] = prs[:words].map { |word| { word: word } }
      prs
    end
end

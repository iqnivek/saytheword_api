class Api::V1::WordListsController < ApplicationController
  def create
  end

  def show
    list = WordList.find(params[:id])
    render json: list
  end
end

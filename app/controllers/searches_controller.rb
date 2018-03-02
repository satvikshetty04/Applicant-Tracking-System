class SearchesController < ApplicationController

  def new
    @search = Search.new
  end

  def create
    Search.find_each(&:destroy)
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

    def search_params
      params.require(:search).permit(:name, :industry, :headquarters, :size)
    end
end
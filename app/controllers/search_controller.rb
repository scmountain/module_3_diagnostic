class SearchController < ApplicationController
  def index
    @search = Search.all(params["q"])
  end
end

class WelcomeController < ApplicationController
  def index

  end
  
  def new
    @search = Search.all
  end
end

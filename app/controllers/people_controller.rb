class PeopleController < ApplicationController
  def index
    @msg = 'Person data'
    @data = Person.all
  end

  def show
    @msg = "people controllerのshowアクション"
    @data = Person.find(params[:ahan])
  end
end

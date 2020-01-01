class PeopleController < ApplicationController
  layout 'people'
  
  def index
    @msg = 'Person data'
    @data = Person.all
  end

  def show
    @msg = "people controllerのshowアクション"
    @data = Person.find(params[:ahan])
  end

  def add
    @msg = "add new data."
    @person = Person.new
  end

  protect_from_forgery

  def create
    @person = Person.new person_params
    if @person.save then
      redirect_to '/people'
      return
    end
    render 'add'
  end

  def edit
    @msg = "edit data.[id = " + params[:ahan] + "]"
    @person = Person.find(params[:ahan])
  end

  def update
    obj = Person.find(params[:id])
    obj.update(person_params)
    redirect_to '/people'
  end

  def find
    @msg = "please type search word"
    @people = Array.new
    if request.post? then
      f = params[:find].split(',')
      @people = Person.where('name like ?', '%' + params[:find] + '%').order 'age asc'

    end
  end

  def delete
    obj = Person.find(params[:jabarasan])
    obj.destroy
    redirect_to '/people'
  end

  private

  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end

end

class PeopleController < ApplicationController
  
  def index
    @people = Person.with_deleted.all
    render json: @people
  end
  
  def create
    @person = Person.new(person_params)
    
    if @person.save
        render json: @person
    else
      render json: @person.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def show
    @person = Person.find(params[:id])
    render json: @person
  end

  
  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(person_params)
      render json: @person
    else
      render json: @person.errors.full_messages, status: :unprocessable_entity
    end
    
  end
  
  def destroy
    @person = Person.find(params[:id])
    @person.destroy
  end
  
  def deleted_people
    @deleted = Person.only_deleted
    render json: @deleted
  end
  
  def active
    @people = Person.all
    render json: @people
  end
  
  def restore
    @person = Person.restore(params[:id])
    render json: @person
  end
  
  private
  
  def person_params
    params.require(:person).permit(:name, :date_of_birth)
  end
    
end

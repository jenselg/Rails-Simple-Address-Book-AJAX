class PeopleController < ApplicationController
    
    before_action :people_collection
    
    def index
        @person = Person.new
    end
    
    def create
        @person = Person.new(person_params)
        @person.save
    end
    
    def destroy
        @person = Person.find(params[:id])
        @person.destroy
    end
    
    private
    
    def people_collection
        @people = Person.all
    end
    
    def person_params
        params.require(:person).permit(:first_name, :last_name, :address, :telephone, :email, :website)
    end

end

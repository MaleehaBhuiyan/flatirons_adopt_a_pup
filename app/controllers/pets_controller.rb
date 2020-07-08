class PetsController < ApplicationController

    def index 
        @pets = Pet.all.select do |pet|
            pet.user_id == nil 
        end 
    end 

    def show
        @pet = Pet.find(params[:id])
    end 

    def edit
        @pet = Pet.find(params[:id])
        @users = User.all 
    end
    
    def update 
        @pet= Pet.find(params[:id]) 
        if @pet.update(pet_params)
            redirect_to pet_path(@pet.id)
          else 
            flash[:my_errors] = @pet.errors.full_messages
            redirect_to edit_pet_path
        end 
    end 

    private 

    def pet_params
        params.require(:pet).permit!
    end 

end

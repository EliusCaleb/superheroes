class PowersController < ApplicationController
    protect_from_forgery with: :null_session
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_errors
    #GET /powers/:id
    def show 
      power= find_power
      render json: power
    end
    
    def update
        power = find_power
        power.update!(power_params)
        render json: power
    end

    private
    def find_power
        Power.find(params[:id])
    end  
     
    def power_params
        params.permit(:name, :description)
    end 

    def render_not_found_response
        render json: { error: "Power not found" }, status: :not_found
    end
    
    def render_errors(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end

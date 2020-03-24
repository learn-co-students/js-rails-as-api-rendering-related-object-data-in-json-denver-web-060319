class SightingsController < ApplicationController 
    before_action :find_id, only: [:show]

    def index
        sightings = Sighting.all
        render json: sightings, include: [:bird, :location]
    end

    def show
        if @sighting
            render json: @sighting, include: [:bird, :location]
            # { id: @sighting.id, bird: @sighting.bird, location: @sighting.location }
        else
            render json: { message: "Error loading sighting show page" }
        end
    end
    
    private
    
    def find_id
        @sighting = Sighting.find_by(id: params[:id])
    end

end
        


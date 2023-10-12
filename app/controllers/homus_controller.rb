class HomusController < ApplicationController
    def start
        @start = Start.new
    end 
    def create
        start = Start.new(start_params)
        start.sava
        redirect_to '/top'
    end
    
    private
    def start_parms
        params.require(:start).permit(:title, :body)
    end
    
end

class CohortsController < ApplicationController
   def new 
    @cohort = Cohort.new 
   end
   
    def index 
   end
    def show
        @cohort = Cohort.find(params[:id])
        @comment = Comment.new
    end

    
end

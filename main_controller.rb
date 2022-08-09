class MainController < ApplicationController
    def index
        @goals = Goal.all
        @count = Goal.count
    end

    def new
        @goal = Goal.new
    end 
    
    def show
        @goal = Goal.find(params[:id])
    end

    def edit
        @goal = Goal.find(params[:id])
    end
    
    def update
        @goal = Goal.find(params[:id])

        if (@goal.update(goal_params))
            render :action => 'show'
        else
            render 'edit'
        end
    end

    def update_status
        @goal = Goal.find(params[:id])

        if (@goal.complete)
            @goal.update_attribute(:complete, false)
        else
            @goal.update_attribute(:complete, true)
        end
        render :action => 'show'
    end

    def destroy
        @goal = Goal.find(params[:id])
        @goal.destroy
        redirect_to main_index_path
    end

    def create
        @goal = Goal.new(goal_params)

        if (@goal.save)
            render :action => 'show'
        else
            render 'new'
        end
        
    end  

    private 
    
    def goal_params
        params.require(:goal).permit(:title, :description, :priority, :date, :complete)
    end
end

class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end  
    
    def create
        Task.create(text: params[:text])
        redirect_to action: :index
    end
    
    def delete
        task = Task.find(params[:id])
        task.destroy
         redirect_to action: :index
    end
end

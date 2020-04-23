class ProjectsController < ApplicationController
    def index
        @projects = Project.all.order("updated_at DESC") 
    end
    
    def new
        @project = Project.new
    end
    
    def create
        @project = Project.new(params.require(:project).permit(:title, :description, :due_date))
        if @project.save
          redirect_to projects_path
        else
          render :new
        end
    end
    
    def show
        id = params[:id]
        @project = Project.find(id)
    end
    def edit
        id = params[:id]
        @project = Project.find(id)
    end
    def destroy
        id = params[:id]
        @project = Project.find(id)
        @project.destroy
        redirect_to projects_path
    end
    def update
        id = params[:id]
        @project = Project.find(id)
        if @project.update(params.require(:project).permit(:title, :description, :due_date))
          redirect_to projects_path(@project)
        else
          render :edit
        end
    end
end

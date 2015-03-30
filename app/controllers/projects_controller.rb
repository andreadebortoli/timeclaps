class ProjectsController < ApplicationController
	before_action :find_project, only: [:show, :edit, :update, :destroy]

	def index
		@project = Project.all.order("created_at DESC")
	end

	def show
	end

	def new
		@project = Project.new

	end

	def create
		@project = Project.new(project_params)

		if @project.save
			redirect_to @project, notice: "Progetto creato con successo!"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @project.update(project_params)
			redirect_to @project
		else
			render 'edit'
		end
	end

	def destroy
		@project.destroy
		redirect_to root_path, notice: "Progetto cancellato con successo!"
	end


	private 

	def project_params
		params.require(:project).permit(:titolo, :customer_id, :stato, works_attributes: [:id, :data, :activity, :column, :location_id, :technician_id, :_destroy])
	end

	def find_project
		@project = Project.find(params[:id])
	end


end

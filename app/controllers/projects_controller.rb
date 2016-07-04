class ProjectsController < ApplicationController

	def create
		@plum = Plum.find(params[:plum_id])
		@project = @plum.projects.create(project_params)
		redirect_to plum_path(@plum)
	end

	 def destroy
    @plum = Plum.find(params[:plum_id])
    @project = @plum.projects.find(params[:id])
    @project.destroy
    redirect_to plum_path(@plum)
  end

	private
		def project_params
			params.require(:project).permit(:name, :number, :department, :state, :address)
		end



end

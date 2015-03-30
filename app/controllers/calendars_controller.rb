class CalendarsController < ApplicationController

	def index

		@year = Time.now.year
		@month = Time.now.month
			
			@anno = params[:anno]
			@mese = params[:mese]
			
			

		  @date = params[:mese] ? Time.new(@anno, @mese) : Time.new(@year,@month)

		 @day = Time.now.day
		
		 @day_s = sprintf ('%02d'), @day

		 if params[:mese].blank?
		 	@mese_n_g = @month
		 else
		 	@mese_n_g = @mese.to_i
		 end


		@days_in_month = Time.days_in_month(@mese_n_g, @year)
		@i = 0
		# @br = "</br>".html_safe

		if params[:technician_id].blank? && params[:esterno].blank?
			@works = Work.all
			@w = 0

		elsif params[:esterno].present?
			@works = Work.where.not(:technician_id => ['1','2','3','4'])
			@w = 1
		else
			@works = Work.where(:technician_id => params[:technician_id])
			@w = 1
		end


		@rapportino = Work.all.order('datetimeperformed asc')
		@rapportinoStage = Work.where(:technician_id => 1)
	
	end

	def show
		@work = Work.find(params[:id])
	end

	def new
		@work = Work.new
	end

	def create
		@work = Work.new(params[:work].permit(:project_id, :technician_id, :location_id, :activity, :datetimeperformed, :hours, :column,:orepreventivate))
		respond_to do |format|
			if @work.save
				format.html { redirect_to works_path, notice: 'Lavoro Creato' }
				format.js { }
			else
				format.html { render 'new' }
				format.js { }
			end
		end
	end

	def edit
		@work = Work.find(params[:id])
	end

	def update
		@work = Work.find(params[:id])

		if @work.update(params[:work].permit(:project_id, :technician_id, :location_id, :activity, :datetimeperformed, :hours, :column,:orepreventivate))
			flash[:notice] = 'Lavoro Aggiornato'
			respond_to @work do |format|
				format.html {redirect_to @work}
				format.js
			end
		else
			render 'edit'
		end
	end

def only_admins_create_update_work
	redirect_to works_path, :alert => 'solo gli amministratori possono creare un lavoro' unless current_user.admin
	
end

def delete
	@work = Work.find(params[:id])
end
def destroy
	work = Work.find(params[:id])
    work.destroy
    redirect_to(:action => 'index')
end




end




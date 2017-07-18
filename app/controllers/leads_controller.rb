class LeadsController < ApplicationController
def index
		@leads = Lead.all 							
	end
	def create
		@leads = Lead.new(lead_params)	
		@leads.save								
		redirect_to leads_path				
	end
	def show
		@lead=Lead.find(params[:id])
	end
	private
	def lead_params
    	params.require(:lead).permit(:lead_name, :employee_ids => [])
  	end
end


class EmployeesController < ApplicationController
	def new													
		@employee = Employee.new()
	end
	def index
		@employees = Employee.all 							
	end
	def create
		@employee = Employee.new(employee_params)
		@employee.save							
		redirect_to @employee
	end					
	def show
		@employee=Employee.find(params[:id])	
	end
	private
	def employee_params
		params.require(:employee).permit(:name,:project_id,:lead_id,:skill_ids => [])
	end
end
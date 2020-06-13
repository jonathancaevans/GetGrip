class CompaniesController < ApplicationController
	before_action :require_login, only: [:new]
	
	def new
		@company = Company.new
	end

	def edit
		@company = Company.find(params[:id])
	end

    def create
		@company = Company.new(company_params)
		
		if @company.save
			redirect_to @company
		else
			render 'new'
		end
    end
	
	def update
		@company = Company.find(params[:id])

		if @company.update(company_params)
			redirect_to @company
		else
			render 'edit'
		end
	end

	def destroy
		@company = Company.find(params[:id])
		@company.destroy
		redirect_to companies_path
	end

	def index
		@company = Company.all
	end

	def show
		@company = Company.find(params[:id])
	end

	private
		def company_params
			params.require(:company).permit(:name, :phone)
		end
end

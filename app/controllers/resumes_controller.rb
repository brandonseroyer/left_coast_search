class ResumesController < ApplicationController

  def index
    @resumes = Resume.all.order(created_at: :desc)
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)

    if @resume.save
      redirect_to root_path, notice: 'Your resume was successfully submitted!'
    else
      render :new
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to resumes_path, notice: 'Resume record was successfully destroyed'
  end

  private

  def resume_params
    params.require(:resume).permit(:first_name, :last_name, :email, :phone, :address, :city, :state, :zip, :about, :document)
  end
end

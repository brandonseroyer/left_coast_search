class ApplicantsController < ApplicationController
  before_action :set_applicant, only: :destroy

  def new
    @job = Job.find(params[:job_id])
    @applicant = @job.applicants.new
  end

  def create
    @job = Job.find(params[:job_id])
    @applicant = @job.applicants.new(applicant_params)

    if @applicant.save
      redirect_to root_path, notice: 'Your Job Application Was Successfully Submitted.'
    else
      render :new
    end
  end

  def destroy
    @job = Job.find(params[:job_id])
    @applicant.destroy
    redirect_to job_applicants_path, notice: 'Applicant was successfully destroyed.'
  end

  private

    def set_applicant
      @applicant = Applicant.find(params[:id])
    end

    def applicant_params
      params.require(:applicant).permit(:first_name, :last_name, :email, :phone, :about)
    end
end

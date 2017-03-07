class ApplicantsController < ApplicationController
  def index
    @applicants = Applicant.all.order(created_at: :desc).page(params[:page]).per(5)
  end

  def new
    @job = Job.find(params[:job_id])
    @applicant = @job.applicants.new
  end

  def create
    @job = Job.find(params[:job_id])
    @applicant = @job.applicants.new(applicant_params)
    if verify_recaptcha
      @applicant.save
      UserMailer.applicant_email(@job).deliver
      redirect_to jobs_path, notice: 'Your Job Application Was Successfully Submitted.'
    else
      render :new
    end
  end

  def show
    @job = Job.find(params[:job_id])
    @applicant = Applicant.find(params[:id])
  end

  def destroy
    @applicant = Applicant.find(params[:id])
    @applicant.destroy
    redirect_to job_path(@applicant.job), notice: 'Applicant was successfully destroyed.'
  end

  private

  def applicant_params
    params.require(:applicant).permit(:first_name, :last_name, :email, :phone, :about, :document)
  end
end

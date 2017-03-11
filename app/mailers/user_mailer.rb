class UserMailer < ApplicationMailer
  default from: 'leftcoastalerts@gmail.com'

  def applicant_email(job, applicant)
    @applicant = applicant
    @job = job
    @brandon = 'brandonseroyer@gmail.com'
    mail(to: @brandon, subject: 'A Job Application Has Been Submitted at leftcoastsearch.com')
  end

  def resume_email(resume)
    @resume = resume
    @brandon = 'brandonseroyer@gmail.com'
    mail(to: @brandon, subject: 'A Resume Has Been Submitted at leftcoastsearch.com')
  end

  def contact_email(contact)
    @contact = contact
    @brandon = 'brandonseroyer@gmail.com'
    mail(to: @brandon, subject: 'A Customer Inquiry Has Been Submitted at leftcoastsearch.com')
  end
end

class UserMailer < ApplicationMailer
  default from: 'leftcoastalerts@gmail.com'

  def applicant_email
    @brandon = 'brandonseroyer@gmail.com'
    mail(to: @brandon, subject: 'A Job Application Has Been Submitted at leftcoastsearch.com')
  end

  def resume_email
    @brandon = 'brandonseroyer@gmail.com'
    mail(to: @brandon, subject: 'A Resume Has Been Submitted at leftcoastsearch.com')
  end

  def contact_email
    @brandon = 'brandonseroyer@gmail.com'
    mail(to: @brandon, subject: 'A Customer Inquiry Has Been Submitted at leftcoastsearch.com')
  end
end

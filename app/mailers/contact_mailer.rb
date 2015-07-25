class ContactMailer < ActionMailer::Base
  default from: "contact@2433winnemac.com"

  def contact_email(contact_params)
    @message_info = contact_params
    mail(to: ENV["CONTACT_EMAIL"], subject: 'Contact Submission for 2433winnemac.com')
  end
end

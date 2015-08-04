class ContactMailer < ActionMailer::Base
  default from: "contact@2433winnemac.com"

  def contact_email(contact_id)
    @message = Contact.find(contact_id)
    mail(to: ENV["CONTACT_EMAIL"], subject: 'Contact Submission for 2433winnemac.com')
    @message.sent = true
    @message.save
  end
end

class ContactController < ApplicationController
  def new
    @message = Contact.new
  end

  def create
    @message = Contact.new(message_params)
    if @message.save
      ContactMailer.delay.contact_email(@message.id)
      redirect_to root_path, notice: "Form Submitted"
    else
      render action: 'new'
    end
  end

  private
    def message_params
      params.require(:contact).permit(:name, :email, :subject, :message, :phone)
    end
end

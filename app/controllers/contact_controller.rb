class ContactController < ApplicationController
  def create
    message = {}
    filtered_params = message_params
    message[:name] = params[:name]
    message[:subject] = params[:subject]
    message[:email] = params[:email]
    message[:message] = params[:message_params]

    ContactMailer.contact_email(message).deliver
    redirect_to root_path, notice: "Form Submitted."
  end

  private
    def message_params
      params.permit(:name, :email, :subject, :message) 
    end
end

class ContactController < ApplicationController
  def create
    message = {}
    filtered_params = message_params
    message[:name] = filtered_params[:name]
    message[:subject] = filtered_params[:subject]
    message[:email] = filtered_params[:email]
    message[:message] = filtered_params[:message]

    ContactMailer.contact_email(message).deliver
    redirect_to root_path, notice: "Form Submitted."
  end

  private
    def message_params
      params.permit(:name, :email, :subject, :message) 
    end
end

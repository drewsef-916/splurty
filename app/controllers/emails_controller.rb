class EmailsController < ApplicationController

  def contact_me
    @email = Email.new
  end

  def create
    @email = Email.create(email_params)
    if @email.invalid?
      flash[:error] = '<strong> Sorry, your email could not be sent.'
    end
    redirect_to root_path
  end

private

  def email_params
    params.require(:email).permit(:title, :from, :body)
  end


end

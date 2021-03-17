class UserMailer < ApplicationMailer
  
  def new_sale_email
    @sale = params[:sale]

    mail(to: <shanecolby@yahoo.com>, subject: "Thanks for your movie purchase!")
  end



  # default from: 'notifications@example.com'

  # def welcome_email
  #   @user = params[:user]
  #   @url  = 'http://example.com/login'
  #   mail(to: @user.email, subject: 'LaunchPad Movie-Lab Receipt')
 
end

class UserMailer < ApplicationMailer
  default from: "info@fly.com"
  
  def booking_confirmation(user)
    @user = user
    @url  = 'http://localhost:3000'
    mail(to: @email, subject: 'Booking Confirmation')
  end 
end

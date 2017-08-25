class UserMailer < ApplicationMailer
  default from: "sunnydgoswami@@gmail.com"
 
  def new_user(user)
    @user = user
    mail(to: user.email, subject: "Welcome to Blocipedia!")
  end
end
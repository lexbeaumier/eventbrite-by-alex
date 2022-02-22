class UserMailer < ApplicationMailer
  default from: "no-reply@eventbrite-by-alex.herokuapp.com"

  def welcome_email(user)
    @user = user
    @url = "https://git.heroku.com/eventbrite-by-alex.git"
    mail(to: @user.email, subject: "Welcome on EventBritebyAlex !")
  end

  def attendance_email(user, event)
    @user = user
    @event = event
    mail(to: @user.email, subject: "Attendance confirmation")
  end
end
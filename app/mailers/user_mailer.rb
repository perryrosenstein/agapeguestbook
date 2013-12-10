class UserMailer < ActionMailer::Base
  default from: "'Ye Agape Guestbook' <agapeguestbook@gmail.com>"

  def user_created(user)
    @user = user
    @user_url  = user_url(@user, host: request.host_with_port )
    mail(to: "#{ENV["USER_CREATED_ALERT_RECIPIENTS"]}", subject: "#{@user.first_name} added to Agape Guestbook!")
  end

  def user_arriving

  end

  def user_departing

  end
end

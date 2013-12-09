class UserMailer < ActionMailer::Base
  default from: "'Ye Agape Guestbook' <agapeguestbook@gmail.com>"

  def user_created(user)
    @user = user
    mail(to: "perryr@gmail.com", subject: "#{@user.first_name} added to Agape Guest Book!")
  end

  def user_arriving

  end

  def user_departing

  end
end

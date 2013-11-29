class UserMailer < ActionMailer::Base
  default from: "elliemacbride@gmail.com"

  def user_created(user)
    @user = user
    mail(to: "perryr@gmail.com", subject: "#{@user.name} (ID##{@user.id}) added to Agape Guest Book")
  end

  def user_arriving

  end

  def user_departing

  end
end

class User < ActiveRecord::Base
  validates :first_name, :presence => true

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def pic
    if self.uid.present?
      "http://graph.facebook.com/#{self.uid}/picture?width=400&height=400"
    else
      "http://us.123rf.com/450wm/kritchanut/kritchanut1308/kritchanut130800062/21738697-male-silhouette-profile-picture-with-question-mark-on-the-head--vector.jpg"
    end
  end
end

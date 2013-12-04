class User < ActiveRecord::Base
  validates :name, :presence => true
  #validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  #validates :arrival_date, :presence => true
  #validates :departure_date, :presence => true

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
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

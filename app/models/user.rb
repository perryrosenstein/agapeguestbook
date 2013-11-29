class User < ActiveRecord::Base
  validates :name, :presence => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :arrival_date, :presence => true
  validates :departure_date, :presence => true
  #validates :where_from, :presence => true

  def pic
    if self.fbid.present?
      "http://graph.facebook.com/#{self.fbid}/picture?width=400&height=400"
    else
      "http://us.123rf.com/450wm/kritchanut/kritchanut1308/kritchanut130800062/21738697-male-silhouette-profile-picture-with-question-mark-on-the-head--vector.jpg"
    end
  end
end

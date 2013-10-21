class User < ActiveRecord::Base
  validates :name, :presence => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :arrival_date, :presence => true
  validates :departure_date, :presence => true
  validates :where_from, :presence => true
end

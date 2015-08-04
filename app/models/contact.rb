class Contact < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :name, :email, :phone, :subject, :message, presence: true
  validates_format_of :email, with: VALID_EMAIL_REGEX
end

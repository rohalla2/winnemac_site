class User < ActiveRecord::Base
  has_secure_password
  validate :only_one

  def only_one
    errors.add(:base, 'Cannot add another user. Not authorized.') if User.count > 0
  end
end

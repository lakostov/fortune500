class User < ApplicationRecord
  before_save { email.downcase! }
  before_save { username.downcase! }
  VALID_USERNAME_REGEX = /\A[a-z0-9_-]{1,50}\z/i
  validates :username, presence: true, length: { maximum: 50 }, format: { with: VALID_USERNAME_REGEX }, uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true, length: { maximum: 255 }
  validates :last_name, presence: true, length: { maximum: 255 }
end

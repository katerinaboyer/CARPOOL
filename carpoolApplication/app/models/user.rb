class User < ApplicationRecord
  has_secure_password

  validates   :email,           presence: true, uniqueness: true
  validates   :first_name,      presence: true
  validates   :last_name,       presence: true
  validates   :uin,             presence: true
  validates   :role,            presence: true
  validates   :password_digest, presence: true
end

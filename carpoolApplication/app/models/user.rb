class User < ApplicationRecord
  has_secure_password

  validates   :email,           presence: true,   format: { with: URI::MailTo::EMAIL_REGEXP },  uniqueness: true
  validates   :first_name,      presence: true
  validates   :last_name,       presence: true
  validates   :uin,             presence: true,   :numericality => {:only_integer => true}, length: { is: 9 },     uniqueness: true
  validates   :role,            presence: true
  validates   :password,        presence: true,   confirmation: true, length: { minimum: 8 }
end
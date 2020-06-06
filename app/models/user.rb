class User < ApplicationRecord
  validates :name, presence: true,length:{maxmum:15}
  validates :email, presence: true
  has_secure_password
  VALID_PASSWORD_REGEX=/\A(?=.*[a-z])(?=.*?\d)[!-~]+\z/i
  validates :password,length:{minimum:8,maxmum:32}
  VALID_EMAIL_REGEX=/\A[.]+@[.]+\.[.]+\Z/i
end

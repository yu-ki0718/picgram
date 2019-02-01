class User < ApplicationRecord
  validates :name,presence:true,length: { in: 1..15 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,presence:true,format:VALID_EMAIL_REGEX
  validates :password,presence:true

  has_secure_password
  has_many :topics
end

# # email
# [A-Za-z0-9._+]+@[A-Za-z]+.[A-Za-z]
# # password
# (?=.*?[a-z])(?=.*?\d)(?=.*?[A-Z])[a-zA-Z\d]{8,32}

class User < ApplicationRecord
  validates :name,presence:true,length: { in: 1..15 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,presence:true,format: VALID_EMAIL_REGEX
  validates :password, format:/\A[[a-zA-Z0-9]]+\z/i,length: { in: 8..32 }

  has_secure_password
end
# 0-9a-zA-Z
# ^[a-zA-Z0-9]+$

class User < ApplicationRecord
  validates :name,presence:true,length: { in: 1..15 }
  validates :email,presence:true,format:[A-Za-z0-9._+]+@[A-Za-z]+.[A-Za-z]
  validates :password,(?=.*?[a-z])(?=.*?\d)(?=.*?[A-Z])[a-zA-Z\d]{8,32}

  has_secure_password
end

# # email
# [A-Za-z0-9._+]+@[A-Za-z]+.[A-Za-z]
# # password
# (?=.*?[a-z])(?=.*?\d)(?=.*?[A-Z])[a-zA-Z\d]{8,32}

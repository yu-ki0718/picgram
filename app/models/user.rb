class User < ApplicationRecord
  validates :name,presence:true,length: { in: 1..15 }
  validates :email,presence:true,format:{with:/[A-Za-z0-9._+]+@[A-Za-z]+.[A-Za-z]/i}
  validates :password, presence: true, format: { with:  /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,16}\z/i }

  has_secure_password
  has_many :topics
  has_many :comments
  has_many :comment_user, through: :comments, source: "topic"
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: "topic"
end

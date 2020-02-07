# require 'rails_helper'

# RSpec.describe User, type: :model do
#   describe User do
#     # 「メールの未設定時は無効となる」
#     it 'is invalid without a email' do
#       user = User.new(email: nil)
#       user.valid?
#       expect(user.errors[:email]).to include("can't be blank")
#     end
#     # 「パスワードの未設定時は無効となる」
#     it 'is invalid without a password' do
#       user = User.new(password: nil)
#       user.valid?
#       expect(user.errors[:password]).to include("can't be blank")
#     end
#     # 「アカウント名の未設定時は無効となる」
#     it 'is invalid without an account' do
#       user = User.new(name: nil)
#       user.valid?
#       expect(user.errors[:email]).to include("can't be blank")
#     end
#   end
# end

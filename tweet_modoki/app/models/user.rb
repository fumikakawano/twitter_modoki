# == Schema Information
#
# Table name: users
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)
#  pass        :string(255)
#  email       :string(255)
#  profile_img :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    validates :pass, presence: true
end

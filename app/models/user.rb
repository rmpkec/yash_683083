class User < ApplicationRecord
  # Direct associations

 has_many :received_friend_requests

 has_many :sent_friend_requests

 has_many :comments

 has_many :likes

 has_one :comment_photos, through: :comment_photos, source: :users

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

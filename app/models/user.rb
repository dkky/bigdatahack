class User < ActiveRecord::Base
  ratyrate_rater
  has_one :profile
  has_many :histories
  has_many :appointments
  has_many :reviews

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end

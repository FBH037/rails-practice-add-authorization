class Student < ActiveRecord::Base

  has_secure_password
  has_many :participations
  has_many :clubs, through: :participations
  

end

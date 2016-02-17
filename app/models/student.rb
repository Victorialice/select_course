class Student < ActiveRecord::Base
  has_many :appointments
  has_many :courses, through: :appointments
end

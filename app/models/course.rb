class Course < ActiveRecord::Base
  validates :name, :number, presence: true, uniqueness: true
end

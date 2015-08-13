class Course < ActiveRecord::Base
  has_many :classrooms, dependent: :destroy

  validates_presence_of :name
  validates_length_of :name, :description, maximum: 45
end

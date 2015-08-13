class Student < ActiveRecord::Base
  has_many :classrooms, dependent: :destroy

  validates_presence_of :name
  validates_length_of :name, :register_number, maximum: 45
end

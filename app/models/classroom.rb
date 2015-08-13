class Classroom < ActiveRecord::Base
  belongs_to :student
  belongs_to :course

  validates_uniqueness_of :student_id, scope: :course_id, :message=>"já está matriculado neste curso"
  validates_presence_of :student_id, :course_id

  before_save do |classroom|
    classroom.entry_at = Time.now
  end
end

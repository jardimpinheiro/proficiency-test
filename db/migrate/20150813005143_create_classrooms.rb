class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.references :student
      t.references :course
      t.datetime :entry_at

      t.index [:student_id, :course_id], unique: true
    end
  end
end

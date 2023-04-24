class AddDeptToStudents < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :department, null: false, foreign_key: true
  end
end

class AddReferencesToStudents < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :university, null: false, foreign_key: true
  end
end

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :surname
      t.integer :tutor_id, default: 1

      t.timestamps null: false
    end
  end
end

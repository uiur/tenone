class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :teacher
      t.string :faculty
      t.string :name
      t.integer :enrollment
      t.integer :pass

      t.timestamps
    end
  end
end

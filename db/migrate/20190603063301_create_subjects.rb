class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :instructor
      t.int :rate

      t.timestamps
    end
  end
end

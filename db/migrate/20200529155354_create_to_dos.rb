class CreateToDos < ActiveRecord::Migration[6.0]
  def change
    create_table :to_dos do |t|
      t.string :task
      t.string :status
      t.date :due_date

      t.timestamps
    end
  end
end

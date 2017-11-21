class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :done
      t.string :description
      t.string :user

      t.timestamps
    end
  end
end

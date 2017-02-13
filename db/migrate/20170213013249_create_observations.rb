class CreateObservations < ActiveRecord::Migration[5.0]
  def change
    create_table :observations do |t|
      t.date :date
      t.text :comment
      t.boolean :positive
      t.integer :user_id
      t.integer :author_id

      t.timestamps
    end
  end
end

class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :title
      t.text :description
      t.integer :max_hourly_intensity
      t.integer :min_hourly_intensity

      t.timestamps
    end
  end
end

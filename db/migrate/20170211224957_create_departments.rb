class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :name
      t.text :description
      t.string :repository_url
      t.string :repository_user
      t.string :repository_password

      t.timestamps
    end
  end
end

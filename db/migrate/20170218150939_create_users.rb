class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :identification
      t.string :identification_type
      t.integer :student_code
      t.string :email
      t.integer :phone
      t.string :photo
      t.integer :semester
      t.text :careers
      t.string :volunteering_agreement

      t.timestamps
    end
  end
end

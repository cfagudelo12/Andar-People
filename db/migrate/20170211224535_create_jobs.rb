class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.date :start_date
      t.date :finish_date

      t.timestamps
    end
  end
end

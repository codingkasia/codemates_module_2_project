class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.integer :location_id
      t.string :semester
  

      t.timestamps
    end
  end
end

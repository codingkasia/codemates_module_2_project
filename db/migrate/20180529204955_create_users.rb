class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.boolean :roomate
      t.integer :location_id
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :cohort_id
      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      
      t.string :password_digest
      t.integer :cohort_id
      t.string :gender
      t.boolean :share_room
      t.boolean :share_bathroom
      t.integer :price
      t.boolean :walking_distance

      t.timestamps
    end
  end
end

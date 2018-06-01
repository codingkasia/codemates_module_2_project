class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer "sender_id"
      t.integer "recipient_id"
      t.integer :cohort_id
      t.integer :user_id
      t.text :content
      t.timestamps
    end
  end
end

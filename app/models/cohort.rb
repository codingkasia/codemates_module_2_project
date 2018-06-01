class Cohort < ApplicationRecord
    belongs_to :location
    has_many :users
    has_many :comments, through: :users, foreign_key: 'recipient_id'
   
end

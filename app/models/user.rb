class User < ApplicationRecord
    belongs_to :cohort, optional: true 
    has_many :comments
    has_many :messages, foreign_key: 'receiver_id'
    has_one :profile

    has_secure_password
    validates :username, presence: true
end

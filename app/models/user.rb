class User < ApplicationRecord
    belongs_to :cohort
    has_many :comments
    has_many :messages

    has_secure_password
end

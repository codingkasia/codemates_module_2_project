class Comment < ApplicationRecord
    
    #belongs_to :user


    belongs_to :sender, :class_name => "User"
    belongs_to :recipient, :class_name => "Cohort"


end

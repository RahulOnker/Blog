class Chat < ApplicationRecord

    has_many :comments, dependent: :destroy
    validates :title, presence: true
    
    has_many :users, through: :comments

end

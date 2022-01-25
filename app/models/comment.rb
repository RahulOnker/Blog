class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :chat
    validates :comment, presence: true
end

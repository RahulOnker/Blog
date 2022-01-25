class AddChatIdToComment < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :chat, null: false, foreign_key: true
  end
end

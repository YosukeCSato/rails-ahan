class CreateBoardMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :board_messages do |t|
      t.text :message
      t.integer :board_user_id

      t.timestamps
    end
  end
end

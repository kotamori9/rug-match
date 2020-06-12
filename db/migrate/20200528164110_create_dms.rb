class CreateDms < ActiveRecord::Migration[5.2]
  def change
    create_table :dms do |t|
      t.string :content
      t.string :user_id
      t.string :room_id
      t.timestamps
    end
  end
end

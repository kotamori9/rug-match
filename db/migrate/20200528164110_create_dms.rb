class CreateDms < ActiveRecord::Migration[5.2]
  def change
    create_table :dms do |t|
      t.string :content
      t.string :user
      t.string :room
      t.timestamps
    end
  end
end

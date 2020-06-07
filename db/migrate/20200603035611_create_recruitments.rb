class CreateRecruitments < ActiveRecord::Migration[5.2]
  def change
    create_table :recruitments do |t|
      t.string :user_id
      t.text   :introduction
      t.string :area,               null: false
      t.string :teamname,           null: false
      t.timestamps
    end
  end
end

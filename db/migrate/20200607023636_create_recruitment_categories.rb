class CreateRecruitmentCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :recruitment_categories do |t|
      t.references :recruitment, foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end

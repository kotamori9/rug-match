class Category < ApplicationRecord
  has_many :recruitment, through: :recruitment_categories
end

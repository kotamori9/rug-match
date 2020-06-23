class Recruitment < ApplicationRecord
  has_many :recruitment_categories
  has_many :categories, through: :recruitment_categories
  belongs_to :user

  validates :introduction, presence: true
  validates :teamname, presence: true
  validates :area, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :areahash
end

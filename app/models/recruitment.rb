class Recruitment < ApplicationRecord
  has_many :categories
  belongs_to :area
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :areahash
end

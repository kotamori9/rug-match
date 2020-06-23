class Top < ApplicationRecord
  belongs_to :recruitment
  has_many :categories
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :areahash
end
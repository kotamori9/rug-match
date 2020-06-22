class Top < ApplicationRecord
  belongs_to :recruitment
  belongs_to :category
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :areahash
end

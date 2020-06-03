class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
         validates :password, length: { minimum: 8 }
         validates :name, presence: true
         validates :area, presence: true
  
  mount_uploader :image, ImageUploader
  belongs_to :recruitment
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :areahash
end

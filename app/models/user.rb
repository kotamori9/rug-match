class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
         validates :password, length: { minimum: 8 }
         validates :name, presence: true
         validates :area, presence: true
  
  mount_uploader :image, ImageUploader
  
  has_many :dms, dependent: :destroy
  has_many :entries, dependent: :destroy

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = password123
      user.name = "ゲストユーザー"
    end
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :areahash
end

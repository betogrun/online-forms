class Form < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy  
  
  validates :title, :description, :user, presence: true
  validates :title, uniqueness: true
  
  extend FriendlyId
  friendly_id :title, use: :slugged
end

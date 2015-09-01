class Category < ActiveRecord::Base
  has_many :posts,dependent: :destroy,inverse_of: :category
  validates :name, presence: true
end

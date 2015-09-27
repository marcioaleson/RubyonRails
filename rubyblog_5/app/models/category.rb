class Category < ActiveRecord::Base
  belongs_to :user, class_name: "User",foreign_key: "user_id",inverse_of: :posts
  has_many :posts,dependent: :destroy,inverse_of: :category
  validates :name, presence: true
end

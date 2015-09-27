class Post < ActiveRecord::Base
  belongs_to :category, class_name: "Category",foreign_key: "category_id",inverse_of: :posts
  belongs_to :user, class_name: "User",foreign_key: "user_id",inverse_of: :posts
  has_many :comments, dependent: :destroy,inverse_of: :post
  has_one :user,dependent: :destroy
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true
end

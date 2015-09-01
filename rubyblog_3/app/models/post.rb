class Post < ActiveRecord::Base
  belongs_to :author,  class_name: "Author",foreign_key: "author_id",inverse_of: :posts
  belongs_to :category, class_name: "Category",foreign_key: "category_id",inverse_of: :posts
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true
end

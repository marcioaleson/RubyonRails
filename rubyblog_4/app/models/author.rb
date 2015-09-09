class Author < ActiveRecord::Base
  has_many :posts,dependent: :destroy,inverse_of: :author
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
end

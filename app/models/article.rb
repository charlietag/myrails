class Article < ApplicationRecord
  #has_many :comments
  has_many :comments, dependent: :destroy # delete comments which belongs to the article first, if comments exists
  validates :title, presence: true,
                    length: { minimum: 5 }
end

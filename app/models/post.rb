class Post < ActiveRecord::Base
  has_many :post_tags
  has_many :tags, through: :post_tags
  belongs_to :user
  accepts_nested_attributes_for :tags

  validates :name, presence: true
  validates :content, presence: true
end

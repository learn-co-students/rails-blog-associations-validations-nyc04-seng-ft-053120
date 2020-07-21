class Post < ActiveRecord::Base
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags

    validates :name, presence: true
    validates :content, presence: true

    def tag_ids=(ids)
        ids.each do |id|
            self.tags << Tag.find(id) if !id.blank?
        end
    end
  
end

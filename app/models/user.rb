class User < ApplicationRecord
    has_many :posts
    
    validates :name, presence: true, uniqueness: true


    private
    
    
end

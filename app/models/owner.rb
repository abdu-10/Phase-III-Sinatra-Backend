class Owner < ActiveRecord::Base
    has_many :bikes
    has_many :riders, through: :bikes    
end
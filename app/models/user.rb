class User < ActiveRecord::Base
    has_secure_password

    has_many :villagers

    validates :username, uniqueness: true
    
end
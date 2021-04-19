class Villager < ActiveRecord::Base
    belongs_to :user

    validates :villagername, presence: true
end
class Restaurant < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :address, presence: true

end

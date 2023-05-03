class Cat < ApplicationRecord
    validates :name, :age, :enjoyments, :image, :ideal_date, presence: true
    validates :enjoyments, length: { minimum: 10 }
end

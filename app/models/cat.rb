class Cat < ApplicationRecord
    validates :name, :age, :enjoys, :gender, :image, presence: true
    validates :enjoys, length: { minimum: 10 }
end

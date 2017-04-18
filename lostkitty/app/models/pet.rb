class Pet < ApplicationRecord

  CATEGORIES = ["cats", "dogs", "snakes", "elephants", "owls"]

  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES,
    message: "%{value} is not a valid category" }

end

class Car < ActiveRecord::Base
    belongs_to :user
    validates :make, :model, :year, :color, :price, :urlpictures, presence: true
  end
  
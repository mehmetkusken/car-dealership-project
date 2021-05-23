class User < ActiveRecord::Base
    has_many :cars
    has_secure_password
    validates :username, uniqueness: true
    validates_length_of :username, in: 5..30
  end
  
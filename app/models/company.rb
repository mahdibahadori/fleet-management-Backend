class Company < ApplicationRecord
  has_many :users
  has_many :vehicles
end

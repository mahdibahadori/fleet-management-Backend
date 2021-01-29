class Vehicle < ApplicationRecord
  belongs_to :company
  has_many :daily_tracks
  has_many :daily_reports
  has_many :incidents
  has_many :users, through: :daily_tracks
end

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  # validates :password, length: {minimum: 8}
  belongs_to :company
  has_many :daily_reports
  has_many :daily_tracks
  has_many :incidents
  has_many :vehicles, through: :daily_tracks
end

class Event < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :guests, class_name: "User", through: :attendance
  has_many :attendances
  validates :start_date, presence: true
  validates_date :start_date, before: :now
  validates :duration, presence: true, numericality: { % 5, => 0 }
  validates :title, presence: true, length: { minimum: 5, maximum: 140 }
  validates :description, presence: true, length: { minimum: 20, maximum: 1000 }
  validates :price, presence: true, length: { minimum: 1, maximum: 1000 }
end
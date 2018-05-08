class Cat < ApplicationRecord
  COLORS = %w(black orange white yellow)
  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: { in: COLORS,
    message: "%{value} is not a valid color"}
  validates :sex, inclusion: { in: %w(M F),
    message: "%{value} is not a sex"}

    
end

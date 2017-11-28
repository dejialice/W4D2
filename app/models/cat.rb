class Cat < ApplicationRecord
  COLORS = %w(black orange gray white brown)
  validates :birth_date, :name, :sex, :description, :color, presence: true
  validates :color, inclusion: { in: COLORS }
  validates :sex, inclusion: { in: ['M', 'F'] }

  def age
    Time.now - self.birth_date
  end
end

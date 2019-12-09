class Car < ApplicationRecord

  validates   :License_plate,    presence: true, length: { is: 7 }, uniqueness: true
  validates   :Model,   presence: true, format:{   :with => /\A[a-zA-Z]+\z/}
  validates   :Make, presence: true, format:{   :with => /\A[a-zA-Z]+\z/}
  validates   :Number_of_seats, presence: true, :numericality => {:only_integer => true}
  validates   :Year, presence: true, :numericality => {:only_integer => true}, length: {is: 4}

end

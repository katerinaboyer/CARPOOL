class Driver < ApplicationRecord
  validates_format_of   :Name,              presence: true, :with => /[a-z]/
  validates             :Phone,             presence: true, :numericality => {:only_integer => true,  length: { is: 10} }
  validates             :number_passengers, presence: true, :numericality => {:only_integer => true}

  STATUS =%w[pending in_progress finished].freeze
end

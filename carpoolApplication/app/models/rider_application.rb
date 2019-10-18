class RiderApplication < ApplicationRecord
  validates_format_of   :Name,              presence: true, :with => /[a-z]/
  validates_format_of   :city,              presence: true, :with => /[a-z]/
  validates             :Phone,             presence: true, :numericality => {:only_integer => true,  length: { is: 10} }
  validates             :zip_code,          presence: true, :numericality => {:only_integer => true,  length: { is: 5}  }
  validates             :number_passengers, presence: true, :numericality => {:only_integer => true}
end

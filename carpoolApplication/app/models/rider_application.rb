class RiderApplication < ApplicationRecord
  validates_format_of   :Name,              presence: true, :with => /[a-z]/
  validates_format_of   :city,              presence: true, :with => /[a-z]/
  validates             :Phone,             presence: true, :numericality => {:only_integer => true,  length: { is: 10} }
  validates             :zip_code,          presence: true, :numericality => {:only_integer => true,  length: { is: 5}  }
  validates             :number_passengers, presence: true, :numericality => {:only_integer => true}
  validates_inclusion_of :zip_code, :in => [77840, 77845, 77801, 77802, 77803]
  validates_inclusion_of :city, :in => ["College Station", "Bryan", "college station", "bryan"]
end

class Person < ActiveRecord::Base
  validates :name, :date_of_birth, presence: true
  validate :dob_earlier_than_today
  
  
  def dob_earlier_than_today
    if date_of_birth && date_of_birth <= Date.today 
      errors.add(:date_of_birth, "can't be in the future")
    end
  end
end

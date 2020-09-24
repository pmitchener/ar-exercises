class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: { message: "last name must be given" }
  validates :hourly_rate, inclusion: {in: 20..200 , message:  "%{value} is not a valid hourly rate."  }
  validates :store_id, presence:{ message: "This employee must belong to a store" }
end

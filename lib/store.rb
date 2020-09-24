class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
  #custom valication
  validate :store_must_care_at_least_one_apparel_line

  def store_must_care_at_least_one_apparel_line
    if !mens_apparel && !womens_apparel
      errors.add(:at_least_one_apparel, "Store must cary at least one apparel line")
    end
  end

end

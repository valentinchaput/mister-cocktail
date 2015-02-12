class Dose < ActiveRecord::Base
  validates :description, presence: true
  validates :cocktail, presence: true, allow_nil: false
  validates :ingredient, presence: true, allow_nil: false
  validates_uniqueness_of [:cocktail, :ingredient]
  belongs_to :cocktail
  belongs_to :ingredient
end

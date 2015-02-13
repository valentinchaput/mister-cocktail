class Cocktail < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  has_attached_file :picture,
    styles: { medium: "400x400>", thumb: "200x200>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end

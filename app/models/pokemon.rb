class Pokemon < ApplicationRecord
  belongs_to :trainer, optional: true
  validates :name, uniqueness: true
end

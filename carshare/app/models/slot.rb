class Slot < ApplicationRecord
  has_and_belongs_to_many :car
end

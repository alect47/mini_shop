class Merchant < ApplicationRecord
  has_many :items, dependent: :destroy

  validates_presence_of :name, :address, :city, :state, :zip
end

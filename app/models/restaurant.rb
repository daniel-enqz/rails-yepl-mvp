class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian],
                                    message: `%{value} is not a valid size` }
  validates :phone_number, format: { with: /\d[0-9]\)*\z/, message: "Only positive number without spaces are allowed"}
end

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian],
                                    message: 'Restaurant category not valid!' }
  validates :phone_number, format: { with: /\d[0-9]\)*\z/, message: 'Only positive number without spaces are allowed'}
end

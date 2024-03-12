class Book < ApplicationRecord
  validates :title, presence: true
  validates :pages, presence: true, numericality: { only_integer: true }
  validates :description, presence: true, length: { minimum: 10 }
end

class Customer < ApplicationRecord
  belongs_to :book

  VALID_WISHES = ['eager', 'normal', 'uninterested']

  validates :wish, inclusion: { in: VALID_WISHES }

  def eager?
    wish == 'eager'
  end
end

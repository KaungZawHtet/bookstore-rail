class Customer < ApplicationRecord
  include Visible
  belongs_to :book


end

module Visible


  extend ActiveSupport::Concern

  VALID_WISHES = ['eager', 'normal', 'uninterested']

  included do
  validates :wish, inclusion: { in: VALID_WISHES }
  end

  class_methods do
    def public_count
      where(wish: 'eager').count
    end
  end

  def eager?
    wish == 'eager'
  end
end

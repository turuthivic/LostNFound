class LostItem < ApplicationRecord
  belongs_to :category
  belongs_to :found_by
  belongs_to :owner
end

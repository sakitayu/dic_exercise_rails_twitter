class Clotter < ApplicationRecord
  validates :content, presence: true, length: { in: 1..140 }
end

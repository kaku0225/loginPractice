class Book < ApplicationRecord
  validates :bookname, presence: true
end

class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  validates :name, presence: true
  validates :living, inclusion: [true, false]
  validates :pullitzer_prizes, presence: true
  validates_associated :books
end

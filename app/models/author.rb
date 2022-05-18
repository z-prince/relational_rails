class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  validates :name, presence: true
  validates :living, inclusion: [true, false]
  validates_associated :books
end

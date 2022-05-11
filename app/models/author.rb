class Author < ApplicationRecord
  has_many :books
  validates :name, presence: true
  validates :living, presence: true
  validates_associated :books
end

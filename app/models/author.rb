class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  validates :name, presence: true
  validates :living, inclusion: [true, false]
  validates_associated :books

  def self.short_time
    order(created_at: :desc)
  end
end

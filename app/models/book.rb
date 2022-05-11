class Book < ApplicationRecord
  belongs_to :author
  validates :pages, presence: true
  validates :name, presence: true
  validates :genre, presence: true
  validates :author_id, presence: true
end

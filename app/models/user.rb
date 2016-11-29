class User < ApplicationRecord
  has_many :decks
  validates :username, presence: true
  validates :password, length: { minimum: 6, maximum: 30 }
end

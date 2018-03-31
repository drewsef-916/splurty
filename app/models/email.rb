class Email < ApplicationRecord
  validates :title, presence: true
  validates :from, presence: true
  validates :body, presence: true
end

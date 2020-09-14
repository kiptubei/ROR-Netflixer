class User < ApplicationRecord
  validates :username, length: { minimum: 3, maximum: 15 }, uniqueness: { case_sensitive: false }
  validates :username, :fullname, presence: true
  validates :photo, length: { maximum: 250 }, allow_blank: true
  has_many :opinions, foreign_key: 'authorid', class_name: 'Opinion'
end

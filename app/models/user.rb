class User < ApplicationRecord
  validates :username, length: { minimum: 3, maximum: 15 }, uniqueness: { case_sensitive: false }
  validates :username, :fullname, presence: true
  validates :photo, length: { maximum: 250 }, allow_blank: true
end

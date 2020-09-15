class User < ApplicationRecord
  validates :username, length: { minimum: 3, maximum: 15 }, uniqueness: { case_sensitive: false }
  validates :username, :fullname, presence: true
  has_many :opinions, foreign_key: 'authorid', class_name: 'Opinion'

  mount_uploader :photo, AvatarUploader
  mount_uploader :CoverImage, AvatarUploader

  def self.user_followers(id, curr_user_id)
    Following.where(followedid: id).where.not(followerid: curr_user_id).order(created_at: :desc).limit(5)
  end

  def self.all_users(user_id)
    User.where('id != ?', user_id)
  end
end

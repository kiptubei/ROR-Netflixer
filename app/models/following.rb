class Following < ApplicationRecord
  belongs_to :follower, foreign_key: 'followerid', class_name: 'User'
  belongs_to :followed, foreign_key: 'followedid', class_name: 'User'

  def self.unfollow(sender_id, receiver_id)
    Following.where(followerid: sender_id).where(followedid: receiver_id)[0]
  end
end

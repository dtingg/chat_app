class Channel < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: :user_id

  has_many :memberships
  has_many :members, through: :memberships, source: :user
end

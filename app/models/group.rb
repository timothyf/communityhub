class Group < ApplicationRecord
  acts_as_taggable

  belongs_to :owner, class_name: "Member"
  belongs_to :community
  has_many :group_memberships
  has_many :members, through: :group_memberships
  has_many :events
  has_many :sponsors, as: :sponsorable
  has_many :organizers, as: :organizable

  has_attached_file :profile_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :profile_photo, content_type: /\Aimage\/.*\z/
  has_attached_file :cover_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover_photo, content_type: /\Aimage\/.*\z/

end

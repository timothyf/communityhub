class Community < ApplicationRecord
  acts_as_taggable

  belongs_to :owner, class_name: "Member"
  has_many :groups
  has_many :community_memberships
  has_many :members, through: :community_memberships
  has_many :events, through: :groups
  has_many :sponsors, as: :sponsorable
  has_many :organizers, as: :organizable

  has_attached_file :profile_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :profile_photo, content_type: /\Aimage\/.*\z/
  has_attached_file :cover_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover_photo, content_type: /\Aimage\/.*\z/

end

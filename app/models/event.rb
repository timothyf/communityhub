class Event < ApplicationRecord
  acts_as_taggable

  belongs_to :venue
  belongs_to :group

  has_many :registrations
  #has_many :attendees, class_name: "Member", through: :registrations, source: :Member
  has_many :members, through: :registrations
  has_many :sponsors, as: :sponsorable

  def community
    group.community
  end

end

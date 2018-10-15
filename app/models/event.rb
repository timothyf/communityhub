class Event < ApplicationRecord
  acts_as_taggable

  belongs_to :venue
  belongs_to :group

  has_many :event_registrations
  #has_many :attendees, class_name: "Member", through: :event_registrations, source: :Member
  has_many :members, through: :event_registrations
  has_many :sponsors, as: :sponsorable

  def community
    group.community
  end

end

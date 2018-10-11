class GroupMembership < ApplicationRecord

  belongs_to :group
  belongs_to :member

  after_create :create_group_member_profile


  private

  def create_group_member_profile
    CommunityMemberProfile.create(:member_id => self.member_id, :group_id => self.group_id)
  end

end

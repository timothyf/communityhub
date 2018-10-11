class CommunityMembership < ApplicationRecord

  belongs_to :community
  belongs_to :member

  after_create :create_community_member_profile


  private

  def create_community_member_profile
    CommunityMemberProfile.create(:member_id => self.member_id, :community_id => self.community_id)
  end

end

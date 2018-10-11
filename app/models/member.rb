class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable
#         :confirmable, :trackable


  has_one   :member_profile, :dependent => :destroy
  has_many  :community_member_profiles, :dependent => :destroy
  has_many  :group_member_profiles, :dependent => :destroy
  has_many  :group_memberships
  has_many  :groups, through: :group_memberships
  has_many  :community_memberships
  has_many  :communities, through: :community_memberships
  has_many  :registrations
  has_many  :events, through: :registrations

  after_create :create_member_profile


  private

  def create_member_profile
    MemberProfile.create(:member_id => self.id)
  end

end

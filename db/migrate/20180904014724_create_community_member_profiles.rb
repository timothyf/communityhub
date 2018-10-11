class CreateCommunityMemberProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :community_member_profiles do |t|
      t.references    :community_membership, null: false
      t.text          :bio
      t.attachment    :photo
      t.timestamps
    end
  end
end

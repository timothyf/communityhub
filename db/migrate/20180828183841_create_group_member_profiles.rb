class CreateGroupMemberProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :group_member_profiles do |t|
      t.references    :group_membership, null: false
      t.text          :bio
      t.attachment    :photo
      t.timestamps
    end
  end
end

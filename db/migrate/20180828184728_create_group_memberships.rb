class CreateGroupMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :group_memberships do |t|
      t.references    :group
      t.references    :member
      t.timestamps
    end
  end
end

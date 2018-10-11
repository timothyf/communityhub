class CreateCommunityMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :community_memberships do |t|

      t.timestamps
    end
  end
end

class CreateMemberProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :member_profiles do |t|
      t.integer       :member_id
      t.string        :first_name
      t.string        :last_name
      t.text          :bio
      t.attachment    :photo
      t.timestamps
    end
  end
end

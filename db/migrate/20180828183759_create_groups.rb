class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string        :name, null: false
      t.text          :description
      t.integer       :owner_id, null: false
      t.references    :community
      t.attachment    :profile_photo
      t.attachment    :cover_photo
      t.boolean       :private, :default => false
      t.boolean       :hidden, :default => false
      t.timestamps
    end
  end
end

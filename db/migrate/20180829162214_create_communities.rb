class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|
      t.string        :name, null: false
      t.text          :description
      t.integer       :owner_id, null: false
      t.attachment    :profile_photo
      t.attachment    :cover_photo
      t.boolean       :private, :default => false
      t.boolean       :hidden, :default => false
      t.timestamps
    end
  end
end

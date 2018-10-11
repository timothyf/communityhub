class CreateOrganizers < ActiveRecord::Migration[5.2]
  def change
    create_table :organizers do |t|
      t.references    :member, null: false
      t.references    :organizable, polymorphic: true, index: true
      t.timestamps
    end
  end
end

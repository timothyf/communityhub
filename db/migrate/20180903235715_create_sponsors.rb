class CreateSponsors < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsors do |t|
      t.string        :name, null: false
      t.string        :contact_name
      t.string        :contact_phone
      t.references    :sponsorable, polymorphic: true, index: true
      t.text          :sponsorship_description
      t.attachment    :photo
      t.timestamps
    end
  end
end

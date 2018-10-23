class CreateSponsorshipLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsorship_levels do |t|
      t.string        :title
      t.integer       :position
      t.references    :sponsorable, polymorphic: true, index: true
      t.timestamps
    end
  end
end

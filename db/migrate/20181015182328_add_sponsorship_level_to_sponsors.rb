class AddSponsorshipLevelToSponsors < ActiveRecord::Migration[5.2]
  def change
    change_table :sponsors do |t|
      t.referencdes :sponsorship_level 
    end
  end
end

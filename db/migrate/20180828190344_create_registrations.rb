class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.references    :event
      t.references    :member
      t.timestamps
    end
  end
end

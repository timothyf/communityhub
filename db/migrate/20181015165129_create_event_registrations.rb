class CreateEventRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :event_registrations do |t|
      t.references    :event
      t.references    :member 
      t.timestamps
    end
  end
end

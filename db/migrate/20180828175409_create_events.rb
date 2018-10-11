class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string        :name, null: false
      t.text          :description
      t.datetime      :start_date
      t.datetime      :end_date
      t.references    :venue
      t.references    :group, null: false
      t.timestamps
    end
  end
end

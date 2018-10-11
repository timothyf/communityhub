class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string        :name, null: false
      t.text          :description
      t.string        :address1
      t.string        :address2
      t.string        :city
      t.string        :state
      t.string        :country
      t.string        :zipcode
      t.integer       :max_capacity
      t.integer       :contact_id
      t.timestamps
    end
  end
end

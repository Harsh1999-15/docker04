class CreateEndangereds < ActiveRecord::Migration
  def change
    create_table :endangereds do |t|
      t.string :name
      t.string :iucn

      t.timestamps null: false
    end
  end
end

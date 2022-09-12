class CreateSharks < ActiveRecord::Migration
  def change
    create_table :sharks do |t|
      t.string :name
      t.text :facts

      t.timestamps null: false
    end
  end
end

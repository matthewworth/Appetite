class CreatePubs < ActiveRecord::Migration
  def change
    create_table :pubs do |t|
    t.string :name
    t.string :address
    t.string :latitude
    t.string :longitude

      t.timestamps
    end
  end
end

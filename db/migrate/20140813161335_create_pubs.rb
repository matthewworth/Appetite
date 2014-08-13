class CreatePubs < ActiveRecord::Migration
  def change
    create_table :pubs do |t|
    t.string :name
    t.string :address
    t.lattitude :string
    t.longitude :string

      t.timestamps
    end
  end
end

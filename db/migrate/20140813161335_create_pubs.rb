class CreatePubs < ActiveRecord::Migration
  def change
    create_table :pubs do |t|

      t.timestamps
    end
  end
end

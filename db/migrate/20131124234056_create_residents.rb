class CreateResidents < ActiveRecord::Migration
  def change
    drop_table :residents
    create_table :residents do |t|
      t.string :name
      t.string :fbid

      t.timestamps
    end
  end
end

class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string :name
      t.string :email
      t.string :uid

      t.timestamps
    end
  end
end

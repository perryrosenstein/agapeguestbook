class CreateUsers < ActiveRecord::Migration
  def change
    drop_table :users
    create_table :users do |t|
      t.string :fbid
      t.string :name
      t.string :email
      t.string :host
      t.date :arrival_date
      t.date :departure_date
      t.string :where_from
      t.text :why_in_sf

      t.timestamps
    end
  end
end

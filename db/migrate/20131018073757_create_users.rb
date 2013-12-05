class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :host
      t.date :arrival_date
      t.date :departure_date
      t.string :where_from
      t.text :why_in_sf
      t.string :uid
      t.string :provider
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end

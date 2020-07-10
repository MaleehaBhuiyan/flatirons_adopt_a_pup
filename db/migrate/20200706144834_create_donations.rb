class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.integer :user_id
      t.integer :pet_id
      t.integer :donation_amount
      t.datetime :date

      t.timestamps
    end
  end
end

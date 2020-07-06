class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.integer :user_id 
      t.string :name
      t.integer :age
      t.string :breed
      t.text :description
      t.string :pet_img_url 

      t.timestamps
    end
  end
end

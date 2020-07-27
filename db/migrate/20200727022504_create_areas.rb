class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.string :name
      t.text :image
      t.string :addres
      t.string :tel
      t.integer :adult_price
      t.integer :child_price
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

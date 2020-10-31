class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :title, null: false
      t.text :text,limit: 300
      t.string :image_id
      t.references :user,foreign_key: true, null: false
      t.references :chain,foreign_key: true
      t.timestamps
    end
  end
end

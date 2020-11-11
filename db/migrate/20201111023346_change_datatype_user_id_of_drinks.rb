class ChangeDatatypeUserIdOfDrinks < ActiveRecord::Migration[5.2]
  def up
    change_column :drinks, :user_id, :bigint
  end

  def down
    change_column :drinks, :user_id, :integer
  end
end

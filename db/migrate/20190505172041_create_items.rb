class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :user_challenge_id
      t.integer :item_group_id

      t.timestamps
    end
  end
end

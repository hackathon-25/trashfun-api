class CreateUserChallengeWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :user_challenge_weights do |t|
      t.integer :user_challenge_id
      t.integer :item_group_id
      t.string :weight

      t.timestamps
    end
  end
end

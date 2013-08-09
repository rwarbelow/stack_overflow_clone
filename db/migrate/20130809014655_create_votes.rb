class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :count, default: 0
      t.integer :voteable_id
      t.string  :voteable_type
      t.integer :user_id
      t.timestamps
    end
  end
end

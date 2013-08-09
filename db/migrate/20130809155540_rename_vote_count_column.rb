class RenameVoteCountColumn < ActiveRecord::Migration
  def change
    rename_column :votes, :count, :direction
  end
end

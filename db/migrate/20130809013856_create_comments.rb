class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.references :commentable, polymorphic: true
      t.references :user
      t.timestamps
    end
  end

  def down
  end
end

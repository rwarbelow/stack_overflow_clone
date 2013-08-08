class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :text
      t.references :question
      t.references :user

      t.timestamps
    end
  end

end

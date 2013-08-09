class CreateQuestionTags < ActiveRecord::Migration
  def change
    create_table :question_tags do |t|
      t.references :tag
      t.references :question

      t.timestamps
    end
  end

end

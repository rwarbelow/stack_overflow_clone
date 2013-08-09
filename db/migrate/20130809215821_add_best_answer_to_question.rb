class AddBestAnswerToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :best_answer_id, :integer
  end
end

require 'spec_helper'

describe Question do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:text) }
  it { should validate_presence_of(:user_id) }
  it { should belong_to(:user) }
  it { should have_many(:answers) }
  it { should belong_to(:best_answer) }
  it { should have_many(:comments) }
  it { should have_many(:votes) }
  it { should have_many(:question_tags) }
  it { should have_many(:tags) }
end

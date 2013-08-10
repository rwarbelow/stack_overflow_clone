require 'spec_helper'

describe QuestionTag do
  it { should belong_to(:tag) }
  it { should belong_to(:question) }
end

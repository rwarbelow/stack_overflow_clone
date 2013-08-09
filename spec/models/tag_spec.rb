require 'spec_helper'

describe Tag do
  it { should have_many(:question_tags) }
  it { should have_many(:questions) }
end

class Question < ActiveRecord::Base
  attr_accessible :text, :user_id, :title, :all_tags
  belongs_to :user
  has_many :answers
  has_many :question_tags
  has_many :tags, through: :question_tags
  has_many :comments, as: :commentable

  validates_presence_of :text, :title

  def all_tags=(tag_names)
    tag_names = tag_names.split(',')
    cleaned_list = remove_whitespace(tag_names)
    self.tags = find_or_create_tags(cleaned_list)
  end

  def remove_whitespace(dirty_array)
    dirty_array.map { |word| word.strip }
  end

  def find_or_create_tags(cleaned_list)
    cleaned_list.map do |tag|
      Tag.find_or_create_by_name(tag)
    end
  end

  def all_tags
    self.tags.map(&:name).join(', ')
  end

end

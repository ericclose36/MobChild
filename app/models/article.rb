class Article < ActiveRecord::Base
  has_many :comments

  validates_presence_of :title, :author
  validates_numericality_of :year
  validates_uniqueness_of :title
  validates_length_of :year, :maximum => 4, :minimum => 4

  paginates_per 5

  def proper_title
    return title.titleize
  end
end

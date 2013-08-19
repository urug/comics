class Book < ActiveRecord::Base
  has_many :issues

  default_scope { order(:name) }

  def issue_count
    issues.count
  end
end

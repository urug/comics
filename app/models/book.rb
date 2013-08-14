class Book < ActiveRecord::Base
  has_many :issues

  default_scope { order(:name) }
end

class Book < ActiveRecord::Base
  has_many :issues
end

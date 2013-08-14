class Issue < ActiveRecord::Base
  belongs_to :book

  default_scope { order(:number) }
end

class Subject < ActiveRecord::Base
  belongs_to :college_levels
  belongs_to :degrees
  belongs_to :types

end

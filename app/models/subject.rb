class Subject < ActiveRecord::Base
  belongs_to :college_level
  belongs_to :degree
  belongs_to :type

end

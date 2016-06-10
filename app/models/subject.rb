class Subject < ActiveRecord::Base
  belongs_to :college_level
  belongs_to :degree
  belongs_to :type

  validates_presence_of :subject_name
  validates_presence_of :description
  validates_presence_of :type_id
  validates_presence_of :college_level_id
  
end

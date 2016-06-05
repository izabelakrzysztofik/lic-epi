class CollegeLevel < ActiveRecord::Base
  belongs_to :degree
  has_many :subject

  def full_name
    "#{self.college_level_name} - #{self.degree.degree_name}"
  end
end

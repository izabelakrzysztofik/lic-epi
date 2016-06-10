class CollegeLevel < ActiveRecord::Base
  belongs_to :degree
  has_many :subjects

  def full_name
    if self.degree
      "#{self.college_level_name} - #{self.degree.degree_name}"
    else
      "#{self.college_level_name} - BRAK STOPNIA"
    end
  end


    def subject_name
      if self.subject
        self.subject.subject_name
      else
        "[BRAK NUMERU]"
      end
    end
    
    def degree_name
      "#{self.degree_name}"
    end
end

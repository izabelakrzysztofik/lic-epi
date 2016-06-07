class Type < ActiveRecord::Base
  belongs_to :subjects

  def title_type
    "#{self.type_name}"
  end
end

class ToDo < ApplicationRecord
  validates :task,:status,:due_date , presence: true
  validate :Date_validation

  private
  def Date_validation

    x= Date.today
    if(due_date!=nil)
      if(x>due_date)
        self.errors[:base] << "Due Date must be greater than Current time and date"
      end
    else
      self.errors[:base] << "Due Date must not be Nil"
    end
  end
end
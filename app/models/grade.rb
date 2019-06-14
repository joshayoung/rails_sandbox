class Grade < ApplicationRecord
  def save_grade(grade:, pass:, attendance:)
      self.grade = grade
      self.pass = pass
      self.attendance = attendance
    save
  end
end

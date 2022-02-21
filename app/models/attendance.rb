class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event

  after_create :confirm_attendance

  def confirm_attendance
    UserMailer.attendance_email(self).deliver_now
  end
end
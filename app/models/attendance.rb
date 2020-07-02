class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :lesson


  def user_sign_in(user, lesson)
    # assign user and lesson to attendance 
    

    # create the attendance 

    # save attendance 
  end

end

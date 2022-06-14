class UserMailer < ApplicationMailer

  def Add_notification(obj)
    @obj =  obj
    @obj_count = obj.class.count

    mail to: "admin@gmail.com", subject: "#{obj.class} has been added"
  end
end

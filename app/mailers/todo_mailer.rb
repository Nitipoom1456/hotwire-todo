class TodoMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def due_todo_email(user, todo)
    @user = user
    @todo = todo
    mail(to: @user.email, subject: "Reminder: Todo due today - #{@todo.name}")
  end
end

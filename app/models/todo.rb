class Todo < ApplicationRecord
    belongs_to :user, optional: true
    def self.send_due_todo_emails
        # Find todos where the duedate is today
        todos_due_today = Todo.where(duedate: Date.today)
    
        todos_due_today.each do |todo|
          TodoMailer.due_todo_email(todo.user, todo).deliver_now
        end
    end
    validates_presence_of :name
    enum status: {
        incomplete: 0,
        complete: 1
    }    
end

class AddUserToTodos < ActiveRecord::Migration[7.2]
  def change
    add_reference :todos, :user, null: true, foreign_key: true
  end
end

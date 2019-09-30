class TodosController < ApplicationController
  
  def show
    todo = Todo.find(params[:todo_id])
    @task = todo.task
    @todos = Todo.where(task_id: @task.id, completed: true)
  end

  def update
    todo = Todo.find(params[:todo_id])
    todo.completed = !todo.completed
    todo.save
    redirect_to root_path
  end

end

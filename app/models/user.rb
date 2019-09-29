class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :fetch_tasks
  has_many :todos
  has_many :tasks, through: :todos


  private
  def fetch_tasks
    Task.all.each do |task|
      Todo.create(
        task_id: task.id,
        user_id: self.id
      )
    end
  end
  
end

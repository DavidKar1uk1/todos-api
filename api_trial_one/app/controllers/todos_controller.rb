class TodosController < ApplicationController

  # attr_reader :reference, :external_reference, :amount, :state, :origination_time, :till_name
  # # GET /todos
  # def index
  #   @todos = Todo.all
  #   json_response(@todos)
  # end
  #
  # # POST /todos
  # def create
  #   @todo = Todo.create!(todo_params)
  #   json_response(@todo, :created)
  # end
  #
  # # GET /todos/:id
  # def show
  #   json_response(@todo)
  # end
  #
  # # PUT /todos/:id
  # def update
  #   @todo.update(todo_params)
  #   head :no_content
  # end
  #
  # # DELETE /todos/:id
  # def destroy
  #   @todo.destroy
  #   head :no_content
  # end
  #
  # private
  #
  # def todo_params
  #   # whitelist params
  #   params.permit(:title, :created_by)
  # end
  #
  # def set_todo
  #   @todo = Todo.find(params[:id])
  # end

  # POST /parse
  def receive
    K2ConnectRubyApiGem::Client.new("b647be91024bc03fb9e83f92238b973a4c070269").parse_it_whole(response)
  end

end

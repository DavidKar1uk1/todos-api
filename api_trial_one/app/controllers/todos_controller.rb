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
    # This is for the body
    req_body = request.body.string
    # This is for the headers
    req_headers = request.headers.env.select{|k, _| k =~ /^HTTP_/}
    # Output is:
    # puts("\n\nHello there. The Request Body is #{req_body}\n\n")
    # puts("\n\nHello there. The Request Header is #{req_headers}\n\n")
    K2ConnectRubyApiGem::Client.new("your access token").parse_it(req_body.to_json, req_headers.to_json)


  end

end

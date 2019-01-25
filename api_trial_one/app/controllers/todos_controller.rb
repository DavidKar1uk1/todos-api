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
    # test = JSON.parse(request.body.string).as_json
    #
    # response.status = K2ConnectRuby::Client.new("#{ENV["K2_SECRET_KEY"].to_s}").parse_it_whole(request)
    # puts ("Response Status Code: #{response.code}\nResponse Message: #{response.message}")
    #
    # Test Yajl
    # test = Yajl::Parser.parse(request.body.string)
    # puts(test["event"]["resource"][""])
    #
    k2_test = K2ConnectRuby::K2Client(ENV["K2_SECRET_KEY"])
    k2_test.authorize_client(request)
    # truth_value = K2ConnectRuby::K2Authorize.authenticate(k2_test.hash_body, k2_test.api_secret_key, k2_test.k2_signature)
    # if truth_value
    #   k2_components = K2ConnectRuby::K2SplitRequest.request_body_components(k2_test.hash_body)
    #   puts(k2_components.topic)
    #   return 200
    # else
    #   return 401
    # end
    # if k2_pasi.@hash_method.eql?("POST")
    #   if K2ConnectRubyApiGem::K2SIGNATURE("#{ENV["K2_SECRET_KEY"].to_s}").authorize_it(k2_pasi.@hash_body, @hash_header)
    #     K2ConnectRubyApiGem::K2SPLITREQ.assign_req_elements(JSON.parse(request.body.string).as_json) and return
    #     return 200
    #   else
    #     return 401
    #   end
    # else
    #   return 400
    # end
  end

end

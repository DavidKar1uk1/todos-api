class TodosController < ApplicationController

  # POST /parse
  def receive
    k2_test = K2ConnectRuby::K2Client.new(ENV["K2_SECRET_KEY"])
    k2_test.parse_request(request)
    k2_truth_value = K2ConnectRuby::K2Authorize.new.authenticate?(k2_test.hash_body, k2_test.api_secret_key, k2_test.k2_signature)
    k2_components = K2ConnectRuby::K2SplitRequest.new(k2_truth_value)
    k2_components.judge_truth(k2_test.hash_body)
    puts(k2_components.first_name)
  end

  # POST /subscribe
  def subscribe

  end

  def welcome
    render html: "Welcome."
  end

end

module RequestSpecHelper
  # parse JSON response toruby hash
  def json
    JSON.parse(response.body)
  end
end
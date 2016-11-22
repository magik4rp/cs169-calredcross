class InvalidPostDataInterceptor
  def initialize(app)
    @app = app
  end

  def call(env)
    request_content = Rack::Request.new(env).POST rescue :bad_form_data

    headers = {'Content-Type' => 'text/plain'}

    if request_content == :bad_form_data
      [400, headers, ['Bad Request']]
    else
      @app.call(env)
    end
  end
end
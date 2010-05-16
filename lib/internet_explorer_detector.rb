class InternetExplorerDetector
  def initialize(app)
    @app = app
  end
  
  def call(env)
		if env['HTTP_USER_AGENT'].include?("MSIE 6.0") || env['HTTP_USER_AGENT'].include?("MSIE 7.0")
			status, headers, response = @app.call(env)
			response_body = "<p>Sorry, but Internet Explorer 6 and Internet Explorer 7 aren't supported. <a href='http://getfirefox.com'>Get FireFox!</a> and come back.</p>"
			[status, headers, response_body]
		else
			@app.call(env)
		end
  end
  
end
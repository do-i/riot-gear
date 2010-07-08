require 'teststrap'

context "Sending a GET request" do
  teardown { reset_webmock }

  asserts("not defining a base_uri") do
    Riot::Context.new("foo") { get "/foo" }.run(Riot::SilentReporter.new)
  end.raises(HTTParty::UnsupportedURIScheme)

  context "with a base-uri" do
    context "without params" do
      hookup do
        stub_request(:get, 'http://test.local/foo').to_return(:body => "Foo", :status => 200)
      end

      base_uri "http://test.local"
      get "/foo"
    
      asserts("status code") { response.code }.equals(200)
      asserts("response body") { response.body }.equals("Foo")
    end # without params

    context "with default params" do
      hookup do
        stub_request(:get, 'http://test.local/foo?bar=baz').to_return(:body => "", :status => 201)
      end

      base_uri "http://test.local"
      default_params({"bar" => "baz"})
      get "/foo"
    
      asserts("status code") { response.code }.equals(201)
    end # with default params

    context "with inline params" do
      hookup do
        stub_request(:get, 'http://test.local/foo?bar=baz').to_return(:body => "", :status => 201)
      end

      base_uri "http://test.local"
      get "/foo?bar=baz"
    
      asserts("status code") { response.code }.equals(201)
    end # with inline params
  end # with a base-uri

end # Sending a GET request

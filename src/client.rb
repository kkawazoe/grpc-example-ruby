$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require "bundler/setup"
require 'grpc'
require 'greeter_services_pb'

def main
  host = ENV["SERVER_HOST"]
  port = ENV["SERVER_PORT"]
  stub = Greeter::GreeterService::Stub.new("#{host}:#{port}", :this_channel_is_insecure)

  response = stub.hello(Greeter::Human.new(name: "Example Taro"))
  p response
end

main()

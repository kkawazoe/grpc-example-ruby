require "bundler/setup"

require 'grpc'
require 'greeter_pb'

module Greeter
  module GreeterService
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'greeter.GreeterService'

      rpc :Hello, Human, Greeting
    end

    Stub = Service.rpc_stub_class
  end
end

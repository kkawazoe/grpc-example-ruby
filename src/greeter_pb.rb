require "bundler/setup"

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "greeter.Human" do
    optional :name, :string, 1
  end
  add_message "greeter.Greeting" do
    optional :message, :string, 1
  end
end

module Greeter
  Human = Google::Protobuf::DescriptorPool.generated_pool.lookup("greeter.Human").msgclass
  Greeting = Google::Protobuf::DescriptorPool.generated_pool.lookup("greeter.Greeting").msgclass
end

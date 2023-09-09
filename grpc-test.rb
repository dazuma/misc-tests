# This is a test of a grpc 1.58.0 segfault on Windows.

# This must be required BEFORE grpc to reproduce the segfault
require "google/protobuf"

require "grpc"

# The segfault happens on the following line.
GRPC::Core::Channel.new "localhost:8000", nil, :this_channel_is_insecure

# Never gets here
puts "Never gets here"

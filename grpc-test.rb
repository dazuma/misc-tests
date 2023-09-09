require "google/protobuf"
require "grpc"
GPRC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

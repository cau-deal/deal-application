import 'package:grpc/grpc.dart';

class GRpcClientSingleton {
  ClientChannel client;
  static final GRpcClientSingleton _singleton = new GRpcClientSingleton._internal();

  factory GRpcClientSingleton() => _singleton;

  GRpcClientSingleton._internal() {
    client = ClientChannel("13.209.87.117", // Your IP here, localhost might not work.
        port: 9090,
        options: ChannelOptions(
          //TODO: Change to secure with server certificates
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ));
  }
}

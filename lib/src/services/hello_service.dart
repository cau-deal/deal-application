import 'package:deal/src/custom/modules/grpc_singleton.dart';
import 'package:deal/src/model/helloworld.pb.dart';
import 'package:deal/src/model/helloworld.pbgrpc.dart';

class HelloService {
  static Future<HelloReply> sayHello(String name) async{
    var client = GreeterClient(GrpcClientSingleton().client);

    var req = new HelloRequest();
    req.name = name;

    return await client.sayHello(req);
  }
}
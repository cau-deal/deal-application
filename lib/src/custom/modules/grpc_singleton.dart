import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;
import 'package:grpc/grpc.dart';

class GrpcClientSingleton {
  static final GrpcClientSingleton _singleton = new GrpcClientSingleton._internal();
  GrpcClientSingleton._internal();
  static GrpcClientSingleton get instance => _singleton;

  static ClientChannel _channel;

  Future<ClientChannel> get channel async {
    if (_channel != null) return _channel;

    final file = await rootBundle.load('res/grpc/public.crt');
    final trustedRoot = file.buffer.asUint8List(file.offsetInBytes, file.lengthInBytes);
    final channelCredentials = ChannelCredentials.secure(certificates: trustedRoot);

    _channel = ClientChannel(
        "grpc.snhyun.me",
        port: 9090,
        options: ChannelOptions(
          credentials: channelCredentials,
          userAgent: Platform.isAndroid ? "DEAL-ANDROID" : "DEAL-IOS",
          connectionTimeout: Duration(seconds: 5),
          idleTimeout: Duration(seconds: 30),
        ));

    return _channel;
  }
}

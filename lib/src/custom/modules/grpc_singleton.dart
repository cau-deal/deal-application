import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:flutter/services.dart' show rootBundle;

class GrpcClientSingleton {

  static final GrpcClientSingleton _singleton = new GrpcClientSingleton._internal();
  GrpcClientSingleton._internal();
  static GrpcClientSingleton get instance => _singleton;

  static ClientChannel _client;

  Future<ClientChannel> get client async {
    if( _client != null ) return _client;

    final file = await rootBundle.load('res/grpc/public.crt');
    final trustedRoot = file.buffer.asUint8List(file.offsetInBytes, file.lengthInBytes);
    final channelCredentials = ChannelCredentials.secure(certificates: trustedRoot);

    _client = ClientChannel(
//        "13.209.87.117",
        "grpc.snhyun.me",
        port: 9090,
        options: ChannelOptions(
          //TODO: Change to secure with server certificates
          credentials: channelCredentials,
          idleTimeout: Duration(minutes: 1),
        ));

    return _client;
  }

}
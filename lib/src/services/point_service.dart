import 'dart:ffi';

import 'package:deal/src/custom/modules/grpc_singleton.dart';
import 'package:deal/src/protos/Empty.pb.dart';
import 'package:deal/src/protos/PointService.pbgrpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

import 'base_service.dart';

class PointService extends BaseService {
  PointServiceClient client;

  PointService({@required this.client})
      : assert(client != null),
        super();

  static Future<PointService> init() async {
    PointServiceClient client =
        PointServiceClient(
            await GrpcClientSingleton.instance.channel,
            options: CallOptions(
                timeout: Duration(seconds: 5),
                metadata: {"ticket": "jwtjwt"}
                )
        );

    return PointService(client: client);
  }


  Future<LookUpBalanceResponse> fetchCurrentPoint({String accessToken}) async {
    Empty req = Empty();
    LookUpBalanceResponse res = LookUpBalanceResponse();

    try {
      res = await client.lookUpBalance(req, options: CallOptions(metadata: {'ticket': accessToken}));
    } catch (e) {
      print(e.toString());
    }

    return res;
  }

  Future<LookUpPointHistoryResponse> fetchPointHistory({@required bool isPlus, String accessToken, int duration}) async {

    LookUpPointHistoryRequest req = LookUpPointHistoryRequest()..lastDays=duration;
    LookUpPointHistoryResponse res = LookUpPointHistoryResponse();

    try {
      res = (isPlus)
          ? await client.lookUpPlusPointHistory(req, options: CallOptions(metadata: {'ticket': accessToken}))
          : await client.lookUpMinusPointHistory(req, options: CallOptions(metadata: {'ticket': accessToken}));
    } catch (e) {
      print(e.toString());
    }

    return res;
  }

  Future<DepositResponse> deposit({String accessToken, int amount}) async {
    DepositRequest req = DepositRequest();
    DepositResponse res = DepositResponse();

    try {
      Deposit d = Deposit();
      d.val = Int64.parseInt("$amount");
      d.depositType = DepositType.KAKAO_PAY;

      req.deposit = d;
      res = await client.deposit(req, options: CallOptions(metadata: {'ticket': accessToken}));
    } catch (e) {
      print(e.toString());
    }

    return res;
  }

//    rpc Deposit(DepositRequest) returns (DepositResponse);

//  rpc LookUpPlusPointHistory(LookUpPointHistoryRequest) returns (LookUpPointHistoryResponse);
//  rpc LookUpMinusPointHistory(LookUpPointHistoryRequest) returns (LookUpPointHistoryResponse);

}

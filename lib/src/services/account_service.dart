import 'package:deal/src/custom/modules/grpc_singleton.dart';
import 'package:deal/src/protos/AccountService.pbgrpc.dart';
import 'package:deal/src/protos/DealService.pb.dart';
import 'package:deal/src/protos/DealService.pbgrpc.dart';
import 'package:deal/src/protos/Empty.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

import 'base_service.dart';

class AccountService extends BaseService {
  AccountServiceClient client;

  AccountService({@required this.client})
      : assert(client != null),
        super();

  static Future<AccountService> init() async {
    AccountServiceClient client =
        AccountServiceClient(await GrpcClientSingleton.instance.channel, options: CallOptions(timeout: Duration(seconds: 5), metadata: {"ticket": "jwtjwt"}));
    return AccountService(client: client);
  }

  Future<AccountAuthResponse> authenticateWithAccount(
      {String accessToken, BANK bank, String account, String owner}) async {

    AccountAuthRequest req = AccountAuthRequest();
    AccountAuthResponse res = AccountAuthResponse();

    try {
      Account _account = Account();
      _account.accountNum = account;
      _account.bank = bank;
      _account.accountHolderInfo = owner;

      req.account = _account;

      res = await client.accountAuth(req, options: CallOptions(metadata: {'ticket': accessToken}));

    } catch (e) {
      print(e.toString());
    }

    return res;
  }


}

import 'package:deal/src/custom/modules/grpc_singleton.dart';
import 'package:deal/src/protos/Date.pb.dart';
import 'package:deal/src/protos/PhoneService.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

import 'base_service.dart';

class PhoneService extends BaseService {
  PhoneServiceClient client;

  PhoneService({@required this.client})
      : assert(client != null),
        super();

  static Future<PhoneService> init() async {
    PhoneServiceClient client =
        PhoneServiceClient(await GrpcClientSingleton.instance.channel, options: CallOptions(timeout: Duration(seconds: 5), metadata: {"ticket": "jwtjwt"}));
    return PhoneService(client: client);
  }

  Future<PhoneAuthResponse> authenticateWithPhone(
      {String accessToken, String phoneNumber, String name, MobileCarrier carrier, bool isNative, Date birthDay, Sex gender}) async {
    PhoneAuthRequest req = PhoneAuthRequest();
    PhoneAuthResponse res = PhoneAuthResponse();

    try {
      req.name = name;
      req.isNative = true;
      req.phoneNum = phoneNumber;
      req.mobileCarrier = carrier;
      req.sex = gender;
      req.birthday = birthDay;

      res = await client.phoneAuth(req, options: CallOptions(metadata: {'ticket': accessToken}));
    } catch (e) {
      print(e.toString());
    }

    return res;
  }

}

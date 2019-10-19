import 'package:deal/src/protos/AuthService.pb.dart';
import 'package:deal/src/protos/AuthService.pbenum.dart';
import 'package:deal/src/protos/DealService.pb.dart';
import 'package:deal/src/protos/UserService.pbgrpc.dart';
import 'package:deal/src/services/auth_service.dart';
import 'package:deal/src/services/deal_service.dart';
import 'package:deal/src/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DealRepository {

  final DealService _dealService;

  DealRepository({
    DealService dealService,
  }) : _dealService = dealService ?? DealService.init();

  Future<LookUpInquiryResponse> fetchInquiryHistory(String accessToken) async {
    return _dealService.fetchInquiryHistory(accessToken: accessToken);
  }

}
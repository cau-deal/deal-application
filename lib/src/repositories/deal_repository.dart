import 'package:deal/src/protos/DealService.pb.dart';
import 'package:deal/src/services/deal_service.dart';

class DealRepository {
  final DealService _dealService;

  DealRepository({
    DealService dealService,
  }) : _dealService = dealService ?? DealService.init();

  Future<LookUpInquiryResponse> fetchInquiryHistory(String accessToken) async {
    return _dealService.fetchInquiryHistory(accessToken: accessToken);
  }
}

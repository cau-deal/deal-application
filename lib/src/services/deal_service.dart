import 'dart:io';

import 'package:deal/src/custom/modules/grpc_singleton.dart';
import 'package:deal/src/protos/DealService.pb.dart';
import 'package:deal/src/protos/DealService.pbgrpc.dart';
import 'package:deal/src/protos/DealService.pbgrpc.dart';
import 'package:deal/src/protos/Empty.pb.dart';
import 'package:deal/src/protos/PhoneService.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

import 'base_service.dart';

class DealService extends BaseService {

  DealServiceClient client;

  DealService({ @required this.client }):assert(client != null), super();

  static Future<DealService> init() async {
    DealServiceClient client = DealServiceClient(
      await GrpcClientSingleton.instance.channel,
      options: CallOptions(
          timeout: Duration(seconds: 5),
          metadata: { "ticket": "jwtjwt" }
      )
    );
    return DealService(client: client);
  }


  Future<InquiryResponse> requestQuestion({
    String accessToken,
    String title,
    String content,
    InquiryCategory category
  }) async {

    InquiryResponse res = InquiryResponse();
    InquiryRequest req = InquiryRequest();
    Inquiry inq = Inquiry();

    try {
      inq.title = title;
      inq.contents = content;
      inq.category = category;

      req.inquiry = inq;

      res = await client.inquiry(req,
          options: CallOptions(metadata: {'ticket':accessToken})
      );

    } catch(e){
      print(e.toString());
    }

    return res;
  }


  Future<LookUpInquiryResponse> fetchInquiryHistory({String accessToken}) async {

    LookUpInquiryResponse res = LookUpInquiryResponse();
    Empty req = Empty();

    try {
      res = await client.lookUpInquiry(req,
          options: CallOptions(metadata: {'ticket':accessToken})
      );
    } catch(e){
      print(e.toString());
    }

    return res;
  }

}
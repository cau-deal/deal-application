import 'dart:io';

import 'package:dio/dio.dart';

import 'base_service.dart';

class FileService extends BaseService {

  Dio dio = new Dio(BaseOptions(
    connectTimeout: 3000,
    receiveTimeout: 5000,
  ));

  Future<Response<String>> uploadMissionThumbnail({String accessToken, File image, Function onProgress}) async {

    FormData fd = FormData.fromMap({ 'type': 'thumbnail' });
    fd.files.add(MapEntry("file", await MultipartFile.fromFile(image.path, filename: "thumbnail.png")));

    return await dio.post(
      "http://grpc.snhyun.me:5000/upload",
      data: fd,
      onSendProgress: (int sent, int total) {
        onProgress(sent, total);
      },
      options: Options(sendTimeout: 3000)
    );
  }


}

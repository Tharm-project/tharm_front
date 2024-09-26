import 'package:get/get.dart';

import 'package:dio/dio.dart' as d;

class ApiService extends GetxService {
  static ApiService get to => Get.find();

  final dio = d.Dio();

  // late RestClient restClient;

  @override
  void onInit() {
    // restClient = RestClient(dio);
    super.onInit();
  }

  Future<Map<String, dynamic>> postViedioAip(String title) async {
    final response = await dio.post(
        "http://114.201.19.101:44783/videos/testupload",
        data: {'title': title});

    if (response.statusCode == 200) {
      return response.data;
    } else {
      return {};
    }
  }

  Future<Map<String, dynamic>> gettViedioAip(int id) async {
    final response = await dio.get("http://114.201.19.101:44783/videos/request",
        queryParameters: {'video_id': id});

    if (response.statusCode == 200) {
      print('tdrhf');
      return response.data;
    } else {
      print('err');
      return {};
    }
  }
}

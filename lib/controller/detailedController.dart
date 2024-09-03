import 'package:get/get.dart';

class DetailedController extends GetxController {
  final String text;
  var buttonSegments = <String>[].obs;

  DetailedController({required this.text}) {
    _splitTextIntoSegments();
  }

  void _splitTextIntoSegments() {
    // 텍스트를 마침표를 기준으로 나누기
    List<String> segments =
      text.split('.').map((segment) => segment.trim()).toList();
    // 빈 문자열 제거
    segments.removeWhere((segment) => segment.isEmpty);
    buttonSegments.assignAll(segments);
  }
}

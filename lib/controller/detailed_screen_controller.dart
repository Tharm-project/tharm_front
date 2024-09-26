import 'package:get/get.dart';
import 'package:tharmproject/api/api_service.dart';
import 'package:tharmproject/screens/video_player_view.dart';

class DetailedScreenController extends GetxController {
  final ApiService apiService = ApiService.to;
  final RxString context = RxString(
      'ChatGPT씨의 일기. 2024년 8월 24일, 오늘은 평소와는 조금 다른 날이었다. 아침에 일어나자마자 기분이 상쾌했다. 커피를 내리며 창밖을 바라보니 하늘이 맑고 청명했다. 어제 비가 왔던 탓에 공기가 상쾌하게 느껴졌다. 조용한 아침을 즐기며 커피를 마신 후, 간단하게 아침식사를 준비했다. 요즘 건강을 생각해서 샐러드와 과일을 주로 먹고 있는데, 오늘은 특히 신선한 과일들이 눈에 들어왔다. 오랜만에 야외에서 산책을 하기로 결심했다. 바람이 선선하게 불어오는 공원에서 산책을 하면서 자연을 만끽하는 것은 정말 기분이 좋았다. 산책을 하면서 새소리와 나무의 싱그러운 향기를 느끼며 잠시 일상의 스트레스를 잊었다. 오후에는 친구와 약속이 있었고, 오랜만에 만나는 친구와 즐거운 시간을 보냈다. 카페에서 오랜만의 담소를 나누며 서로의 근황을 이야기하는 것이 참 좋았다. 각자의 일상과 고민을 나누는 것이 생각보다 큰 위로가 됐다. 저녁에는 집에서 혼자 조용히 시간을 보내기로 했다. 하루를 되돌아보며 차분히 하루를 정리하는 시간은 참 소중하다. 평소에는 바쁘게 지내다 보니 이런 여유로운 시간을 갖기가 쉽지 않은데, 오늘은 그런 여유를 느낄 수 있어서 좋았다. 하루를 마무리하며 책을 읽고, 따뜻한 차를 한 잔 마셨다. 오늘 하루를 잘 보내고 나니 내일도 기대가 된다. 이런 소소한 행복들이 모여서 큰 행복이 되는 것 같다는 생각이 든다.');

  Future<void> postVideo(String title) async {
    // final result = await apiService.postViedioAip(title);
    // print(result);
    // Get.to(VideoPlayerView(viedoId: result['url']));
    Get.to(VideoPlayerView(viedoId: 0));
  }
}

import 'package:get/get.dart';
import 'package:tharmproject/api/api_service.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerViewController extends GetxController {
  final ApiService apiService = ApiService.to;
  final int viedoId;

  late VideoPlayerController videoController;
  Duration position = Duration.zero;

  final RxBool isPlaying = RxBool(false);
  final RxDouble progress = RxDouble(0.0);
  final RxDouble aspectRatio = RxDouble(0.0);
  final RxString title = RxString('initial');

  VideoPlayerViewController({required this.viedoId});

  @override
  void onInit() async {
    // TODO: 추후 이용할 코드
    // videoController = VideoPlayerController.networkUrl(
    //     Uri.parse("https://amuz.co.kr/themes/web/official/videos/amuz_L.webm"));
    // TODO: 영상 테스트 코드
    videoController =
        VideoPlayerController.asset("assets/videos/test_video_2.mp4")
          ..initialize();
    videoController.setPlaybackSpeed(1); // 영상 스피드
    played();

    // await getVideoApi();

    videoController.addListener(() {
      aspectRatio.value = videoController.value.aspectRatio;
      isPlaying.value = videoController.value.isPlaying;

      position = videoController.value.position;
      int max = videoController.value.duration.inSeconds;
      progress.value = (position.inSeconds / max * 100).isNaN
          ? 0
          : position.inSeconds / max * 100;
      update();
    });

    super.onInit();
  }

  Future<void> getVideoApi() async {
    print('object');
    final result = await apiService.gettViedioAip(viedoId);
    print(result);

    videoController = VideoPlayerController.networkUrl(Uri.parse(result['url']))
      ..initialize();
    videoController.setPlaybackSpeed(1); // 영상 스피드
    played();
  }

// 영상 재생
  void played() => videoController.play();

// 영상 멈춤
  void stoped() => videoController.pause();

// 영상 다시보기
  void resetVideo() {
    videoController.seekTo(Duration.zero);
    videoController.play();
  }

  // void seekTo(int value) {
  //   int add = position.inSeconds + value;
  //   videoController.seekTo(Duration(seconds: add < 0 ? 0 : add));
  // }
}

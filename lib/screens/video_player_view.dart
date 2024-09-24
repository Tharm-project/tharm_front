import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharmproject/controller/video_player_view_controller.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerView extends StatelessWidget {
  VideoPlayerView({super.key});

  final _controller = Get.put(VideoPlayerViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _controller.title.value,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 35),
            // 영상 표시
            _ShowViedo(controller: _controller),
            const SizedBox(height: 60),
            Center(
              child: _VideoPalyBtn(controller: _controller),
            )
          ],
        ),
      ),
    );
  }
}

class _VideoPalyBtn extends StatelessWidget {
  const _VideoPalyBtn({
    super.key,
    required VideoPlayerViewController controller,
  }) : _controller = controller;

  final VideoPlayerViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final playStatus = _controller.isPlaying.value
          ? 'stop'
          : !_controller.isPlaying.value && _controller.progress > 98
              ? 'reset'
              : 'play';
      return ElevatedButton(
        onPressed: playStatus == 'stop'
            ? _controller.stoped
            : playStatus == 'reset'
                ? _controller.resetVideo
                : _controller.played,
        child: Icon(
          playStatus == 'stop'
              ? Icons.stop
              : playStatus == 'reset'
                  ? Icons.replay
                  : Icons.play_arrow,
        ),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), // 원형 모양
            padding: const EdgeInsets.all(20), // 내부 여백
            backgroundColor: Colors.grey.shade300),
      );
    });
  }
}

class _ShowViedo extends StatelessWidget {
  const _ShowViedo({
    super.key,
    required VideoPlayerViewController controller,
  }) : _controller = controller;

  final VideoPlayerViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: Get.width,
        height: 291,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Obx(() {
            if (_controller.aspectRatio.value > 0) {
              return AspectRatio(
                aspectRatio: _controller.videoController.value.aspectRatio,
                child: VideoPlayer(_controller.videoController),
              );
            } else {
              return const Center(
                child: Text('영상 받아오기를 실패했습니다. 다시 시도 해주세요.'),
              );
            }
          }),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.black,
            child: const Center(
              child: Icon(
                Icons.play_circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const VideoDescription(),
      ],
    );
  }
}

class VideoDescription extends StatelessWidget {
  const VideoDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Text(
            'Video Title',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Video description',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Likes: 34',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

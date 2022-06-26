import 'package:book_flutter_practise/models/video_model.dart';

class Channel{
  final String id;
  final String title;
  final String profilePictureUrl;
  final String subscribeCount;
  final String videoCount;
  final String uploadPlaylistId;
  List<Video> videos;

  Channel({
    required this.id,
    required this.title,
    required this.profilePictureUrl,
    required this.subscribeCount,
    required this.videoCount,
    required this.uploadPlaylistId,
    required this.videos
});

  factory Channel.fromMap(Map<String, dynamic> map) {
    return Channel(
      id: map['id'],
      title: map['snippet']['title'],
      profilePictureUrl: map['snippet']['thumbnails']['default']['url'],
      subscribeCount: map['statistics']['subscribeCount'],
      videoCount: map['statistics']['videocount'],
      uploadPlaylistId: map['contentDetails']['relatedPlayLists']['uploads'], videos: [],
    );
  }

}
import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
    LocalVideoModel({
        required this.name,
        required this.videoUrl,
        required this.likes,
        required this.views,
    });

    final String name;
    final String videoUrl;
    final int likes;
    final int views;

    factory LocalVideoModel.fromJson(Map<String, dynamic> json) => LocalVideoModel(
        name: json["name"],
        videoUrl: json["videoUrl"],
        likes: json["likes"],
        views: json["views"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "videoUrl": videoUrl,
        "likes": likes,
        "views": views,
    };

    VideoPost toVideoPost() => VideoPost(
      caption: name,
      videoUrl: videoUrl,
      likes: likes,
      views: views
    );
}

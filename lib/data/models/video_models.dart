

class VideoModels {
  String key;
  String site;

  VideoModels({
    required this.key,
    required this.site,
  });

  factory VideoModels.fromJson(Map<String, dynamic> json) => VideoModels(
        key: json["key"]??"",
        site: json["site"]??"",
      );
}

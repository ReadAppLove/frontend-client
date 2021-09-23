import 'package:readapp/models/volume_info.dart';

class Volume {
  final String id;
  final String selfLink;
  final VolumeInfo volumeInfo;

  Volume(this.id, this.selfLink, this.volumeInfo);

  Volume.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        selfLink = json['selfLink'],
        volumeInfo = VolumeInfo.fromJson(json['volumeInfo']);

  Map<String, dynamic> toJson() => {
    'id': id,
    'selfLink': selfLink,
    'volumeInfo': volumeInfo,
  };
}
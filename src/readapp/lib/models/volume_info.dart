class VolumeInfo {
  final String title;
  final String publisher;
  final String description;
  final String thumbnailUrl;

  VolumeInfo(this.title, this.publisher, this.description, this.thumbnailUrl);

  VolumeInfo.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        publisher = json['publisher'],
        description = json['description'],
        thumbnailUrl = json['imageLinks']['thumbnail'];

  Map<String, dynamic> toJson() => {
    'title': title,
    'publisher': publisher,
    'description': description,
    'thumbnailUrl': thumbnailUrl,
  };
}
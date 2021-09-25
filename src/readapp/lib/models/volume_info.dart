class VolumeInfo {
  final String title;
  final String publisher;
  final String description;
  final String thumbnailUrl;

  VolumeInfo(this.title, this.publisher, this.description, this.thumbnailUrl);

  VolumeInfo.fromJson(Map<String, dynamic> json)
      : title = json['title'] ?? 'No title',
        publisher = json['publisher'] ?? 'No publisher',
        description = json['description'] ?? 'No description',
        thumbnailUrl = json['imageLinks']?['thumbnail'] ?? 'https://picsum.photos/120/170';

  Map<String, dynamic> toJson() => {
    'title': title,
    'publisher': publisher,
    'description': description,
    'thumbnailUrl': thumbnailUrl,
  };
}
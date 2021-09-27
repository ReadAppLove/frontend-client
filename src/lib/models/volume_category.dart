class VolumeCategory {
  final String name;
  final String categoryId;
  final String badgeUrl;

  VolumeCategory(this.name, this.categoryId, this.badgeUrl);

  VolumeCategory.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        categoryId = json['categoryId'],
        badgeUrl = json['badgeUrl'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'categoryId': categoryId,
    'badgeUrl': badgeUrl,
  };
}
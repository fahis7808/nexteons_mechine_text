class ImageData {
  String id;
  String name;
  String url;
  String createdUserId;
  int createdAt;
  int updatedAt;
  int status;

  ImageData({
    required this.id,
    required this.name,
    required this.url,
    required this.createdUserId,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) {
    return ImageData(
      id: json['_id'],
      name: json['_name'],
      url: json['_url'],
      createdUserId: json['_createdUserId'],
      createdAt: json['_createdAt'],
      updatedAt: json['_updatedAt'],
      status: json['_status'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = id;
    data['_name'] = name;
    data['_url'] = url;
    data['_createdUserId'] = createdUserId;
    data['_createdAt'] = createdAt;
    data['_updatedAt'] = updatedAt;
    data['_status'] = status;
    return data;
  }
}

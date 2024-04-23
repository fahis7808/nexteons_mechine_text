class DataTableModel {
  String id;
  String name;
  String url;
  String createdUserId;
  int uid;
  int docType;
  int createdAt;
  int updatedAt;
  int status;

  DataTableModel({
    required this.id,
    required this.name,
    required this.url,
    required this.createdUserId,
    required this.uid,
    required this.docType,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });

  factory DataTableModel.fromJson(Map<String, dynamic> json) {
    return DataTableModel(
      id: json['_id'],
      name: json['_name'],
      url: json['_url'],
      createdUserId: json['_createdUserId'],
      uid: json['_uid'],
      docType: json['_docType'],
      createdAt: json['_createdAt'],
      updatedAt: json['_updatedAt'],
      status: json['_status'],
    );
  }
}

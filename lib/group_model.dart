class Group {
  final int groupId;
  final String groupName;

  // Constructor
  Group({
    required this.groupId,
    required this.groupName,
  });

  // เมธอดในการแปลง Group object ให้เป็น Map datatype
  Map<String, dynamic> toMap() {
    return {
      'groupId': groupId,
      'groupName': groupName,
    };
  }

  // เมธอดแปลงข้อมูลชนิด Map ให้เป็น Group object
  factory Group.fromMap(Map<String, dynamic> map) {
    return Group(
      groupId: map['groupId'] as int,
      groupName: map['groupName'] as String,
    );
  }
}

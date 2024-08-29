class Message {
  // final int? id;
  final String text;
  final DateTime timestamp;

  Message({required this.text, required this.timestamp});

  Map<String, dynamic> toMap() {
    return {
      // 'id': id,
      'text': text,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  static Message fromMap(Map<String, dynamic> map) {
    return Message(
      // id: map['id'],
      text: map['text'],
      timestamp: DateTime.parse(map['timestamp']),
    );
  }
}

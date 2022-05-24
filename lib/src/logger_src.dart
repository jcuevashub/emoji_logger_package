/// Prints logs using emoji
///
/// Use with EmojiLogger.d('your message')
class EmojiLogger {
  /// print debug message
  static d(String message) {
    print('🤔😧 $message');
  }

  /// print error message
  static e(String message) {
    print('🐛🐞 $message');
  }
}

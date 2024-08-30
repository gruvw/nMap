/// Null map operation extension.
extension NullMap<T> on T? {
  /// Null map operator, applies `convert` on reciever if it is not `null`, returns `null` otherwise.
  ///
  /// Example:
  /// ```dart
  /// final int? a = null;
  /// final int b = 1;
  ///
  /// print(a.nmap((n) => n + 1)); // null
  /// print(b.nmap((n) => n + 1)); // 2
  /// ```
  ///
  /// For more information: https://github.com/dart-lang/language/issues/361
  R? nmap<R>(R Function(T v) convert) {
    // required for type promotion, only on local variables
    // for more information: https://github.com/dart-lang/language/issues/1188
    final t = this;

    return t == null ? null : convert(t);
  }
}

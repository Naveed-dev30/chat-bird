class NoPersistedValueFoundException implements Exception {
  @override
  bool operator ==(Object other) {
    return other is NoPersistedValueFoundException;
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

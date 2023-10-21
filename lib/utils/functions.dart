T tap<T>(T value, void Function(T) callback) {
  callback(value);
  return value;
}

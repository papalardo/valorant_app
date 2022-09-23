// Ordena uma lista baseada em outra
extension ListSortRef<T> on List<T> {
  List<T> sortByRef(
    List<String> ref,
    String Function(T) refValue, [
    String Function(T)? suffix,
  ]) {
    String addSuffix(T v) => suffix == null ? '' : suffix(v);
    String prefix(T v) {
      var index = ref.indexWhere((k) => refValue(v) == k);
      return index < 0 ? ref.length.toString() : index.toString();
    }

    sort((a, b) {
      var sortValueA = "${prefix(a)}_${addSuffix(a)}";
      var sortValueB = "${prefix(b)}_${addSuffix(b)}";
      return sortValueA.compareTo(sortValueB);
    });
    return this;
  }
}

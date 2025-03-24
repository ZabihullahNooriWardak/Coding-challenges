void main() {}

List removeDuplicate(List lst) {
  List newList = [];

  for (final item in lst) {
    bool isDuplicate = false;
    for (final newItem in newList) {
      if (item == newItem) {
        isDuplicate = true;
        break;
      }
    }
    if (!isDuplicate) {
      newList[newList.length] = item;
    }
  }
  return newList;
}

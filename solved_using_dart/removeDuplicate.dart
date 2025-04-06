void main() {
  var lst = [3, 8, 2, 4, 6, 4, 3];
  print(removeDuplicate(lst));
}

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
      // Manually increase the size of the list
      newList.length += 1;
      newList[newList.length - 1] = item;
    }
  }
  return newList;
}
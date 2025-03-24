void main() {}

List removeDuplicate(List lst) {
  List newList = [];
  for (int i = 0; i < lst.length; i++) {
    for (int j = 0; j <= newList.length; j++) {
      if (lst[i] == newList[j]) {
        break;
      }
      newList[newList.length] = lst[i];
    }
  }
  return newList;
}

void main() {
  var lst = [3, 8, 2, 9, 21];
  print(secondLarge(lst));
}

// .Write a function to find the second largest number in a list.

int secondLarge(List<int> lst) {
  int largets = lst[0];
  for (int i = 0; i < lst.length; i++) {
    if (lst[i] > largets) {
      largets = lst[i];
    }
  }
  int secondLarge = lst[0];
  for (int i = 0; i < lst.length; i++) {
    if (lst[i] > secondLarge && lst[i] != largets) {
      secondLarge = lst[i];
    }
  }
  return secondLarge;
}

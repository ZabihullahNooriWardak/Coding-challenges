void main() {
  print(isPalindrome("boodb"));
}

// boob   bob

// first solution (mine)

bool isPalindrome(String str) {
  double halfLength = str.length / 2;
  String firstString = "";
  String secondString = "";
  if (str.length % 2 == 0) {
    for (int i = 0; i < halfLength; i++) {
      firstString += str[i];
    }

    for (int i = str.length - 1; i >= halfLength; i--) {
      secondString += str[i];
    }
    print(firstString);
    print(secondString);
    if (firstString == secondString) {
      return true;
    }
  } else {
    var middleIndex = halfLength - 0.5;
    for (int i = 0; i < halfLength; i++) {
      if (i == middleIndex) {
        continue;
      }
      firstString += str[i];
    }

    for (int i = str.length - 1; i >= halfLength; i--) {
      if (i == middleIndex) {
        continue;
      }
      secondString += str[i];
    }
    print(firstString);
    print(secondString);
    if (firstString == secondString) {
      return true;
    }
  }
  return false;
}

// second solution (internet google )

bool isPalindrome2(String str) {
  var newString = "";
  for (int i = str.length - 1; i >= 0; i--) {
    newString += str[i];
  }
  if (str == newString) {
    return true;
  }
  return false;
}

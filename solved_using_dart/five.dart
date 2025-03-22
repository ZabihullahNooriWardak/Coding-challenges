// 5.	Write a function to check if a number is prime.

void main() {
  print(toUperCase("Zabihullah Noori"));
  print(findFactorial(5));
  print(findFactorial(3));
  print(findFactorial(0));
}

bool isPrime(int num) {
  if (num < 4) {
    return true;
  } else {
    for (int i = 2; i < num / 2; i++) {
      if (num % i == 0) {
        return true;
      }
    }

    return false;
  }
}

String reverseString(String str) {
  // print(str.length);
  // print(str[0]);
  var newString = "";
  for (int i = str.length - 1; i >= 0; i--) {
    newString += str[i];
  }
  return newString;
}

List reverseList(List lst) {
  return [];
}

// write a function to count the number of Vowel in a string

int countVowel(String str) {
  int counter = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == 'a' ||
        str[i] == 'A' ||
        str[i] == 'e' ||
        str[i] == 'E' ||
        str[i] == 'I' ||
        str[i] == 'i' ||
        str[i] == 'o' ||
        str[i] == 'O' ||
        str[i] == 'U' ||
        str[i] == 'u') {
      counter += 1;
    }
  }
  return counter;
}

// write a function to upper case a string

String toUperCase(String str) {
  String newString = "";
  for (int i = 0; i < str.length; i++) {
    if (str[i] == 'a') {
      newString += "A";
    } else if (str[i] == 'b') {
      newString += 'B';
    } else if (str[i] == 'c') {
      newString += "C";
    } else if (str[i] == 'd') {
      newString += 'D';
    } else if (str[i] == 'e') {
      newString += 'E';
    } else if (str[i] == 'f') {
      newString += "F";
    } else if (str[i] == 'g') {
      newString += "G";
    } else if (str[i] == 'h') {
      newString += "H";
    } else if (str[i] == 'i') {
      newString += "I";
    } else if (str[i] == 'j') {
      newString += 'J';
    } else if (str[i] == 'k') {
      newString += "K";
    } else if (str[i] == 'l') {
      newString += "L";
    } else if (str[i] == 'm') {
      newString += "M";
    } else if (str[i] == 'n') {
      newString += "N";
    } else if (str[i] == 'o') {
      newString += "O";
    } else if (str[i] == 'p') {
      newString += "P";
    } else if (str[i] == 'q') {
      newString += "Q";
    } else if (str[i] == 'r') {
      newString += 'R';
    } else if (str[i] == 's') {
      newString += "S";
    } else if (str[i] == 't') {
      newString += "T";
    } else if (str[i] == 'u') {
      newString += "U";
    } else if (str[i] == 'v') {
      newString += "V";
    } else if (str[i] == 'w') {
      newString += "W";
    } else if (str[i] == 'x') {
      newString += "X";
    } else if (str[i] == 'y') {
      newString += "Y";
    } else if (str[i] == 'z') {
      newString += "Z";
    } else {
      newString += str[i];
    }
  }
  return newString;
}

int findFactorial(int number) {
  if (number == 0 || number == 1) {
    return 1;
  }
  int newNumber = 1;
  for (int i = 1; i <= number; i++) {
    newNumber *= i;
  }
  return newNumber;
}

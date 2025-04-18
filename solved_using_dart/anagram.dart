void main() {
  // print(isAnagram('listen', 'silent'));
  // print(isAnagram('evil', 'vile'));
  // print(isAnagram('a', 'b'));

  var map = {'a': 3, 'b': "3333"};
  print(map['a']);
  print(map['d']);
  print(isAnagram('abb', 'baa'));
}
//What is the challange ?
/* 
In other words, two strings are considered anagrams
 if they have the same characters with the same frequency,
  but the order of the characters is different. For example,
   “listen” and “silent” are anagrams because you can rearrange the letters in one to form the other.
*/

// my Algorithm steps

// first we can check the length of both string
// we should check sigle character of a string and compare it with  another string  and number of occurence of each character
// and then check the number of occurence
bool isAnagram(String str1, String str2) {
  String character1 = '';
  String character2 = '';
  int counter1 = 0;
  int counter2 = 0;
  if (str1.length != str2.length) {
    return false;
  }
  for (int i = 0; i < str1.length; i++) {
    character1 = str1[i];
    counter1 = 0;
    for (int j = 0; j < str2.length; j++) {
      if (character1 == str2[j]) {
        counter1++;
      }
    }
    if (counter1 == 0) {
      return false;
    }
  }

  for (int i = 0; i < str2.length; i++) {
    character2 = str2[i];
    counter2 = 0;
    for (int j = 0; j < str1.length; j++) {
      if (character2 == str1[j]) {
        counter2++;
      }
    }
    if (counter2 == 0) {
      return false;
    }
  }

  return true;
}

// bool isAnagram(String str1, String str2) {
//   var firstMap = {};
//   if (str1.length != str2.length) {
//     return false;
//   }
//   for (int i = 0; i < str1.length;i++){
 
//   }
//    return false;
// }

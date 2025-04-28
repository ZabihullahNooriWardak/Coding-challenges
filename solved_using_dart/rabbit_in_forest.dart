import 'dart:ffi';

void main() {
  // var x = Car(name: "corolla", modal: 2005)..getModal();
  // print(x.modal);
  // print(x);
  // var lst = [3, 4, 2, 5, 22];
  // lst[0] = 0;
  // print(lst);

  print(numRabbits([1, 1, 2]));
}

// There is a forest with an unknown number of rabbits. We asked n rabbits "How many rabbits have the same color as you?" and collected the answers in an integer array answers where answers[i] is the answer of the ith rabbit.

// Given the array answers, return the minimum number of rabbits that could be in the forest.

// Example 1:

// Input: answers = [1,1,2]
// Output: 5
// Explanation:
// The two rabbits that answered "1" could both be the same color, say red.
// The rabbit that answered "2" can't be red or the answers would be inconsistent.
// Say the rabbit that answered "2" was blue.
// Then there should be 2 other blue rabbits in the forest that didn't answer into the array.
// The smallest possible number of rabbits in the forest is therefore 5: 3 that answered plus 2 that didn't.
// Example 2:

// Input: answers = [10,10,10]
// Output: 11

//Algorithm
//

int numRabbits(List<int> answers) {
  if (answers.length == 0) {
    return 0;
  }
  if (answers.length == 1) {
    return answers[0] + 1;
  }
  // i don't know if we are given sorted or unsorted array therefore i must make sure it is sorted first
  answers.sort();
  int rabbit = 0;
  int element = answers[0];
  int elementCounter = 1;
  for (int i = 1; i < answers.length; i++) {
    if (element != answers[i]) {
      rabbit += element + 1;
      if (i < answers.length - 1) {
        element = answers[i + 1];
      }
      continue;
    }
    if (element == answers[i]) {
      elementCounter++;

      if (elementCounter == element + 1) {
        rabbit += elementCounter;
        elementCounter = 1;
      }
      if (i < answers.length - 1) {
        element = answers[i + 1];
      }
    }
    // else {
    //   element = answers[i];
    // }
  }
  return rabbit;
}

class Car {
  String name;
  int modal;
  Car({required this.name, required this.modal});

  void get getName {
    this.name;
  }

  void setName(String name) {
    this.name = name;
  }

  int getModal() {
    return this.modal;
  }

  void setModal(int modal) {
    this.modal = modal;
  }
}

int numRabbitts(List<int> answers) {
  var previousElement = answers[0];
  var rabbitNumber = 0;
  var elementCounter = 1;
  for (int i = 1; i < answers.length; i++) {
    if (previousElement == answers[i]) {
      elementCounter++;
      if(elementCounter==previousElement+1){
      rabbitNumber += previousElement + 1;

      }
      previousElement = answers[i];
    } else {
      rabbitNumber += previousElement + 1;
      elementCounter = 1;
      previousElement = answers[i];
    }
  }
  return 0;
}

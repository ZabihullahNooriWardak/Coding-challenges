void main() {
  // var x = Car(name: "corolla", modal: 2005)..getModal();
  // print(x.modal);
  // print(x);
  // var lst = [3, 4, 2, 5, 22];
  // lst[0] = 0;
  // print(lst);
  // var m = {"a": 3, "b": 4, "a": 89};
  // print(m["b"]);
  // print(m["a"]);
  // print(m);
  var x = rabbit([2, 2, 3]);
  print(x);
  // MyService md = MyService();
  // print(numOfRabbits([2, 1, 3]));
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
      rabbit += (element + 1);
      if (i < answers.length - 2) {
        element = answers[i];
      }
      continue;
    }
    if (element == answers[i]) {
      elementCounter++;

      if (elementCounter == element + 1) {
        rabbit += elementCounter;
        elementCounter = 1;
      }
      // if (i < answers.length) {
      //   element = answers[i + 1];
      // }
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
      if (elementCounter == previousElement + 1) {
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

int another(List<int> answers) {
  return 0;
}

//singlethone pattern learning

class MyService {
  MyService._privateConstructor();
  MyService();
  static final MyService instance = MyService._privateConstructor();
  void doSomething() {
    print("doing something .");
  }
}

// singleton with lazy initialization

class LazyService {
  LazyService._();
  static LazyService? _instance;
  static LazyService get instance {
    _instance ?? LazyService._();
    return _instance!;
  }

  void doSomething() {
    print("doing ...");
  }
}

int rabbitLastTry(List<int> rabbitAnswers) {
  int element = rabbitAnswers[0];
  int counter = 0;
  int elementCounter = 1;
  for (int i = 1; i < rabbitAnswers.length; i++) {
    if (element != rabbitAnswers[i]) {
    } else {}
  }
  return 0;
}

int anotherTry(List<int> answers) {
  int counter = 0;
  for (int i = 0; i < answers.length; i++) {}
  return 0;
}

int numOfRabbits(List<int> answers) {
  Map<int, int> freq = {};

  for (var ans in answers) {
    freq[ans] = (freq[ans] ?? 0) + 1;
  }

  int rabbits = 0;
  freq.forEach((answer, count) {
    int groupSize = answer + 1;
    int groups =
        (count / groupSize).ceil(); // even if partial group, we need full space
    rabbits += groups * groupSize;
  });

  return rabbits;
}

int rabbit(List<int> answers) {
  Map myMap = {};
  for (int i = 0; i < answers.length; i++) {
    myMap[answers[i]] = (myMap[answers[i]] ?? 0) + 1;
  }

  //for this example [2,2,2,2,3]
  //it will create a map like below :
  //{2:4,3:1}
  print(myMap);
  int counter = 0;

  myMap.forEach((key, value) {
    double div = value / (key);
    int rounded = div.ceil();
    print(counter);
    counter += (rounded);
    print(counter);
    counter += 1;
    print(counter);
  });
  return counter;
}

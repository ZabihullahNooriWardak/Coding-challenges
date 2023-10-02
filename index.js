/*
 * Complete the 'gradingStudents' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY grades as parameter.
 */

function gradingStudents(grades) {
  let roundUpArray = [];
  for (let i = 0; i < grades.length; i++) {
    if (grades[i] > 37) {
      if (grades[i] % 5 > 2) {
        roundUpArray.push(grades[i] + (5 - (grades[i] % 5)))
      } else {
        roundUpArray.push(grades[i]);
      }
    } else {
      roundUpArray.push(grades[i])
    }
  }
  return roundUpArray;

}

let testArray = [73, 67, 38, 33];
console.log(testArray);
console.log(gradingStudents(testArray));

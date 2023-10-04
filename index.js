
/*
 * Complete the 'breakingRecords' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY scores as parameter.
 */


function breakingRecords(scores) {

  let lowScoreRecord = scores[0];
  let lowScoreRecordCount = 0;
  let highScoreRecord = scores[0];
  let hightScoreRecordCount = 0;
  let newMinMaxRecordArray = [];
  for (let i = 0; i < scores.length; i++) {
    if (lowScoreRecord > scores[i]) {
      lowScoreRecord = scores[i];
      lowScoreRecordCount += 1;
    }
    if (highScoreRecord < scores[i]) {
      highScoreRecord = scores[i];
      hightScoreRecordCount += 1;
    }
  }
  newMinMaxRecordArray.push(hightScoreRecordCount);
  newMinMaxRecordArray.push(lowScoreRecordCount);

return newMinMaxRecordArray;

}

let test = [3,4,21,36,10,28,35,24,42];
console.log(breakingRecords(test));
console.log(4,2);
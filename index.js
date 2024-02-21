//Google Question
//Given an array = [2,5,1,2,3,5,1,2,4]:
//It should return 2

//Given an array = [2,1,1,2,3,5,1,2,4]:
//It should return 1

//Given an array = [2,3,4,5]:
//It should return undefined


function firstRecurringCharacter(input) {
    let newUniqueValueArray = [];
    for (let i = 0; i < input.length; i++) {
        let forCompare = input[i];
        if (newUniqueValueArray.includes(forCompare)) {
            return forCompare;
        } else {
            newUniqueValueArray.push(forCompare)
        }
    }
    return undefined;
}

console.log("here is the value:", firstRecurringCharacter([2,5,5,2,3,5,1,2,4]));

//Bonus... What if we had this:
// [2,5,5,2,3,5,1,2,4]
// return 5 because the pairs are before 2,2
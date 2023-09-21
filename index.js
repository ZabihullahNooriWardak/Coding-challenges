
let myVar = "";

function staircase(n) {
    let counter = n - 1;

    for (let i = 1; i < n.length + 1; i++) {
        myVar = "";
        for (let j = 0; j < counter.length; j++) {
            myVar += " "
        }

        for (p = i; p < n.length; p++) {
            myVar += "#";
        }
        console.log(myVar);
        counter--;
    }
}
staircase(5);

// myVar+="#";
// console.log(myVar)
// myVar+="#";
// console.log(myVar);
/*
   #
  ##
 ###
####
*/

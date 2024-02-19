
//create a function that reverse a string 
// 'zabih' should be : 
// 'hibaz'
function reverse(str){
    let myArray = [];
   for(let i =str.length-1; i>=0;i--){
      myArray.push(str[i])

   }
 let newStr="";
   for(let i=0;i<myArray.length;i++){
   newStr+=myArray[i]
   }
  return newStr
}

console.log(reverse('ali')); 
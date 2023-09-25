function miniMaxSum(arr) {
    // Write your code here
 let sortedArray=   arr.sort((a,b)=>(a - b));
   let totalMax=0;
   for(let i=1;i<arr.length;i++){
     totalMax+=arr[i];
   }
   let totalMin = 0;
   for(let j=0;j<arr.length-1;j++){
    totalMin+=arr[j];
   }
console.log(totalMin,totalMax);
}
miniMaxSum([3,2,9,1,9])
function mergeSortArray(arr1, arr2) {
    if (arr1.length === 0) {
        return arr2
    }

    if (arr2.length === 0) {
        return arr1
    }
    let i = 0;
    let j = 0;
    let newMergedArray = []

    while (arr1.length > i && arr2.length > j) {
        if (arr1.length == i && arr2.length == j) {
            return newMergedArray
        }
        if (arr1[i] < arr2[j]) {
            newMergedArray.push(arr1[i])
            i++
        } else {
            newMergedArray.push(arr2[j])
            j++
        }
    }
    if (arr2.length == j) {
        for (let k = i; k < arr1.length; k++) {
            newMergedArray.push(arr1[k])
        }
    }
    if (arr1.length == i) {
        for (let p = j; p < arr2.length; p++) {
            newMergedArray.push(arr2[p])
        }
    }

    return newMergedArray

}
console.log(mergeSortArray([4, 5, 8, 33, 99], [3, 3, 4, 5, 8, 8, 8, 9, 9, 9, 98]));
console.log(mergeSortArray([8, 9, 11], []));
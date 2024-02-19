class MyArray {


    constructor() {
        this.length = 0;
        this.data = {};
    }

    get(index) {
        return this.data[index]
    }

    push(item) {
        this.data[this.length] = item
        this.length++
    }

    pop() {
        delete this.data[this.length - 1]
        this.length--
    }
}


let arr = new MyArray()
arr.push("zabih")
arr.push(2)
arr.push("ali")
console.log(arr.get(2)); 
arr.pop()
console.log(arr);
class HashTable {
    constructor(size) {
        this.n = 0 ;
        this.data = new Array(size)
    }
    _hash(key) {
        let hash = 0;
        for (let i = 0; i < key.length; i++) {
            hash = (hash + key.charCodeAt(i) * i) % this.data.length
        }
        return hash;
    }   
   

    set(key, value) {
        // this.data.splice(this.n,0,[key, value]);
        this.data[this.n]=[key,value];
        this.n++;
    }

    get(key) {
        for (let i = 0; i < this.data.length; i++) {

            if (key === this.data[i][0]) {
                return this.data[i][1];
            }

        }

        return "this key value could not be found"

    }
}

const myHashTable = new HashTable(50);
myHashTable.set('grapes', 10000);
myHashTable.set('myName',"zabih")
console.log(myHashTable.get('grapes')); 
console.log(myHashTable.get("myName"));
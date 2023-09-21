

function staircase(n) {
    let stair = "";
    for (let i = 0; i < n; i++) {
        stair = "";
        for (let j = 0; j < n; j++) {
            if (j < n - i - 1) {
                stair += " ";
            } else {
                stair += "#";
            }
        }
        console.log(stair);
    }
}
staircase(4);
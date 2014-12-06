var nums = process.argv.slice(2);

var total = 0;

var sum = function (x) {
    total += Number(x);
};

nums.forEach(sum);

console.log(total);

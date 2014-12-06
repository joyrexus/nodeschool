var nums = process.argv.slice(2);

var total = nums.reduce(function(total, i) {
    total += parseInt(i);
    return total;
}, 0);

console.log(total);

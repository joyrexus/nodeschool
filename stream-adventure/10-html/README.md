# HTML Stream

Your program will get some html written to stdin. Convert all the inner html to
upper-case for elements with a class name of "loud".

You can use `trumpet` and `through` to solve this adventure.

With `trumpet` you can create a transform stream from a css selector:

    var trumpet = require('trumpet');
    var fs = require('fs');
    var tr = trumpet();
    fs.createReadStream('input.html').pipe(tr);
    
    var stream = tr.select('.beep').createStream();

Now `stream` outputs all the inner html content at `'.beep'` and the data you
write to `stream` will appear as the new inner html content.

Make sure to `npm install trumpet through` in the directory where your solution
file lives.

To test your solution, try the following:

    echo '<div class="loud">hello</div>' | node solution.js

This should print ...

    <div class="loud">HELLO</div>


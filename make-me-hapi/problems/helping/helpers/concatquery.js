'use strict';


module.exports = function (context) {

    var q = context.data.root.query;
    return Object.keys(q).map(function(k) { 
        return q[k] 
    }).join('');
};

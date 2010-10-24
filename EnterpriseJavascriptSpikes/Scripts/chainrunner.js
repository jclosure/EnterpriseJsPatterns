
var dom = [
  { tag: 'p', innerHTML: 'Test 1', color: 'green' },
  { tag: 'p', innerHTML: 'Test 2', color: 'black' },
  { tag: 'p', innerHTML: 'Test 3', color: 'red' },
  { tag: 'div', innerHTML: 'Name: Bob' }
];

function fakeQuery(selector) {
    return new fakeQuery.fn.init(selector);
}

fakeQuery.fn = fakeQuery.prototype = {
    init: function (selector) {
        this.selector = selector;
        this.length = 0;
        this.prevObject = null;


        if (!selector) {
            return this;
        } else {
            return this.find(selector);
        }
    },

    find: function (selector) {
        var elements = [],
        ret = fakeQuery();
        for (var i = 0; i < dom.length; i++) {
            if (dom[i].tag === selector) {
                elements.push(dom[i]);
            }
        }
        ret.elements = elements;
        ret.selector = selector;
        ret.length = elements.length;
        ret.prevObject = this;
        return ret;
    },

    color: function (value) {
        var ret = fakeQuery(this.selector);
        ret.elements = this.elements;
        ret.prevObject = this;
        for (var i = 0; i < ret.length; i++) {
            ret.elements[i].color = value;
        }
        return ret;
    }
};

fakeQuery.fn.init.prototype = fakeQuery.fn;

//fakeQuery('p').color('red').elements



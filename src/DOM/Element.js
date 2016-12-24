"use strict";

// var Maybe = require("../Maybe");
var Maybe = PS["Data.Maybe"];

exports.addEventListener = function (target) {
    return function(type) {
        return function(listener) {
            return function(useCapture) {
                return function() {
                    target.addEventListener(type, listener, useCapture);
                    return {};
                };
            };
        };
    };
};
exports.removeEventListener = function (target) {
    return function(type) {
        return function(listener) {
            return function(useCapture) {
                return function() {
                    target.removeEventListener(type, listener, useCapture);
                    return {};
                };
            };
        };
    };
};
exports.dispatchEvent = function (target) {
    return function(event) {
        return function() {
            target.dispatchEvent(event);
            return {};
        };
    };
};
exports.childElements = function(target) {
    return function() {
        return Array.prototype.slice.call(target.childNodes);
    };
};
exports.parentElement = function(target) {
    return function() {
        var parent = target.parentNode;
        if(parent == null) {
            return new Maybe.Nothing();
        } else {
            return new Maybe.Just(parent);
        }
    }
};
exports.appendChild = function(target) {
    return function(child) {
        return function() {
            target.appendChild(child);
            return child;
        };
    };
};
exports.hasChildElements = function(target) {
    return function() {
        return target.hasChildNodes();
    };
}
exports.insertBefore = function (target) {
    return function(element) {
        return function(before) {
            return function() {
                target.insertBefore(element, before);
                return element;
            };
        };
    };
};
exports.removeChild = function(target) {
    return function(child) {
        return function() {
            target.removeChild(child);
            return target;
        };
    };
};
exports.replaceChild = function(target) {
    return function(newChild) {
        return function(oldChild) {
            return function() {
                target.replaceChild(newChild, oldChild);
                return newChild;
            };
        };
    };
};
exports.className = function(target) {
    return function() {
        return target.className;
    };
};
exports.setClassName = function(target) {
    return function(classNameFn) {
        return function() {
            var className = classNameFn(target.className);
            target.className = className;
            return target;
        };
    };
};
exports.id = function(target) {
    return function() {
        return target.id;
    };
};
exports.setId = function(target) {
    return function(idFn) {
        return function() {
            var id = idFn(target.id);
            target.id = id;
            return target;
        };
    };
};
exports.innerHTML = function(target) {
    return function() {
        return target.innerHTML;
    };
};
exports.setInnerHTML = function(target) {
    return function(htmlFn) {
        return function() {
            var html = htmlFn(target.innerHTML);
            target.innerHTML = html;
            return target;
        };
    };
};
exports.tagName = function(target) {
    return function() {
        return target.tagName;
    };
};
exports.getAttribute = function(target) {
    return function(attr) {
        return function() {
            return target.getAttribute(attr);
        };
    };
};
exports.setAttribute = function(target) {
    return function(attr) {
        return function(valueFn) {
            return function() {
                var value = valueFn(target.getAttribute(attr));
                target.setAttribute(attr, value);
                return target;
            };
        };
    };
};
exports.hasAttribute = function(target) {
    return function(attr) {
        return function() {
            return target.hasAttribute(attr);
        };
    };
};
exports.removeAttribtute = function(target) {
    return function(attr) {
        return function() {
            target.removeAttribtute(attr);
            return target;
        };
    };
};
exports.getElementsByClassName = function(target) {
    return function(className) {
        return function() {
            return Array.prototype.slice.call(target.getElementsByClassName(className));
        };
    };
};
exports.getElementsByTagName = function(target) {
    return function(tagName) {
        return function() {
            return Array.prototype.slice.call(target.getElementsByTagName(tagName));
        };
    };
};
exports.querySelector = function(target) {
    return function(query) {
        return function() {
            var result = target.querySelector(query);
            if(result == null) {
                return new Maybe.Nothing();
            } else {
                return new Maybe.Just(parent);
            }
        };
    };
};
exports.querySelectorAll = function(target) {
    return function(query) {
        return function() {
            return Array.prototype.slice.call(target.querySelectorAll(query));
        };
    };
};

"use strict";

exports.bubbles = function(event) {
    return function() {
        return event.bubbles;
    };
};
exports.cancelable = function(event) {
    return function() {
        return event.cancelable;
    };
};
exports.currentTarget = function(event) {
    return function() {
        return event.currentTarget;
    };
};
exports.defaultPrevented = function(event) {
    return function() {
        return event.defaultPrevented;
    };
};
exports.eventPhase = function(event) {
    return function() {
        return event.eventPhase;
    };
};
exports.target = function(event) {
    return function() {
        return event.target;
    };
};
exports.timeStamp = function(event) {
    return function() {
        return event.timeStamp;
    };
};
exports.eventType = function(event) {
    return function() {
        return event.type;
    };
};
exports.createEvent = function(type) {
    return function() {
        return new Event();
    };
};
exports.isTrusted = function(event) {
    return function() {
        return event.isTrusted;
    };
};
exports.preventDefault = function(event) {
    return function() {
        event.preventDefault();
        return {};
    };
};
exports.stopPropagation = function(event) {
    return function() {
        event.stopPropagation();
        return {};
    };
};

"use strict";

// var Maybe = require("../Maybe");
// var Maybe = PS["Data.Maybe"];

exports.body = function() {
  return document.body;
  // var result = document.body;
  // if(result == null) {
  //   return new Maybe.Nothing();
  // } else {
  //   return new Maybe.Just(result);
  // }
};

// exports.docAddEventListener = function(type) {
//     return function(listener) {
//         return function(useCapture) {
//             return function() {
//                 document.addEventListener(type, listener, useCapture);
//                 return {};
//             };
//         };
//     };
// };
// exports.docRemoveEventListener = function(type) {
//     return function(listener) {
//         return function(useCapture) {
//             return function() {
//                 document.removeEventListener(type, listener, useCapture);
//                 return {};
//             };
//         };
//     };
// };
// exports.docDispatchEvent = function(event) {
//     return function() {
//         document.dispatchEvent(event);
//         return {};
//     };
// };

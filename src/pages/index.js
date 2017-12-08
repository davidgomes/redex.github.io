// Generated by BUCKLESCRIPT VERSION 2.1.0, PLEASE EDIT WITH CARE
'use strict';

var Link        = require("../../bindings/gatsby/link.js");
var React       = require("react");
var Helpers     = require("../utils/Helpers.js");
var ReasonReact = require("reason-react/src/ReasonReact.js");

var component = ReasonReact.statelessComponent("Index");

function make() {
  var newrecord = component.slice();
  newrecord[/* render */9] = (function () {
      return React.createElement("div", undefined, React.createElement("h1", undefined, Helpers.text("Hi people")), React.createElement("p", undefined, Helpers.text("Welcome to your new Gatsby site.")), React.createElement("p", undefined, Helpers.text("Now go build something great.")), ReasonReact.element(/* None */0, /* None */0, Link.make("/page_2/", /* None */0, /* array */[Helpers.text("Go to page 2")])));
    });
  return newrecord;
}

var $$default = ReasonReact.wrapReasonForJs(component, (function () {
        return make(/* array */[]);
      }));

exports.component = component;
exports.make      = make;
exports.$$default = $$default;
exports.default   = $$default;
exports.__esModule= true;
/* component Not a pure module */

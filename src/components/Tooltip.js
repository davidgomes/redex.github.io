// Generated by BUCKLESCRIPT VERSION 2.1.0, PLEASE EDIT WITH CARE
'use strict';

var Block         = require("bs-platform/lib/js/block.js");
var Curry         = require("bs-platform/lib/js/curry.js");
var React         = require("react");
var ReasonReact   = require("reason-react/src/ReasonReact.js");
var TooltipStyles = require("./TooltipStyles.js");

var component = ReasonReact.reducerComponent("Tooltip");

function make(content, _, child) {
  var newrecord = component.slice();
  newrecord[/* render */9] = (function (param) {
      var reduce = param[/* reduce */1];
      return React.createElement("div", {
                  className: TooltipStyles.container,
                  onMouseEnter: Curry._1(reduce, (function () {
                          return /* true */1;
                        })),
                  onMouseLeave: Curry._1(reduce, (function () {
                          return /* false */0;
                        }))
                }, param[/* state */2] !== 0 ? React.createElement("div", {
                        className: TooltipStyles.tooltip
                      }, content) : null, child);
    });
  newrecord[/* initialState */10] = (function () {
      return /* false */0;
    });
  newrecord[/* reducer */12] = (function (isHovered, _) {
      return /* Update */Block.__(0, [isHovered]);
    });
  return newrecord;
}

var Styles = 0;

exports.Styles    = Styles;
exports.component = component;
exports.make      = make;
/* component Not a pure module */

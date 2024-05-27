
"use strict";

let SwitchControllerGoal = require('./SwitchControllerGoal.js');
let SwitchControllerFeedback = require('./SwitchControllerFeedback.js');
let SwitchControllerActionGoal = require('./SwitchControllerActionGoal.js');
let SwitchControllerActionFeedback = require('./SwitchControllerActionFeedback.js');
let SwitchControllerAction = require('./SwitchControllerAction.js');
let SwitchControllerActionResult = require('./SwitchControllerActionResult.js');
let SwitchControllerResult = require('./SwitchControllerResult.js');
let ControllerStatistics = require('./ControllerStatistics.js');
let JointStatistics = require('./JointStatistics.js');
let ActuatorStatistics = require('./ActuatorStatistics.js');
let MechanismStatistics = require('./MechanismStatistics.js');

module.exports = {
  SwitchControllerGoal: SwitchControllerGoal,
  SwitchControllerFeedback: SwitchControllerFeedback,
  SwitchControllerActionGoal: SwitchControllerActionGoal,
  SwitchControllerActionFeedback: SwitchControllerActionFeedback,
  SwitchControllerAction: SwitchControllerAction,
  SwitchControllerActionResult: SwitchControllerActionResult,
  SwitchControllerResult: SwitchControllerResult,
  ControllerStatistics: ControllerStatistics,
  JointStatistics: JointStatistics,
  ActuatorStatistics: ActuatorStatistics,
  MechanismStatistics: MechanismStatistics,
};


"use strict";

let ScanAngle = require('./ScanAngle.js');
let ControllerInfo = require('./ControllerInfo.js');
let Led = require('./Led.js');
let DigitalInputEvent = require('./DigitalInputEvent.js');
let MotorPower = require('./MotorPower.js');
let RobotStateEvent = require('./RobotStateEvent.js');
let ButtonEvent = require('./ButtonEvent.js');
let ExternalPower = require('./ExternalPower.js');
let Sound = require('./Sound.js');
let VersionInfo = require('./VersionInfo.js');
let DockInfraRed = require('./DockInfraRed.js');
let DigitalOutput = require('./DigitalOutput.js');
let WheelDropEvent = require('./WheelDropEvent.js');
let KeyboardInput = require('./KeyboardInput.js');
let BumperEvent = require('./BumperEvent.js');
let SensorState = require('./SensorState.js');
let CliffEvent = require('./CliffEvent.js');
let PowerSystemEvent = require('./PowerSystemEvent.js');
let AutoDockingGoal = require('./AutoDockingGoal.js');
let AutoDockingActionFeedback = require('./AutoDockingActionFeedback.js');
let AutoDockingAction = require('./AutoDockingAction.js');
let AutoDockingActionGoal = require('./AutoDockingActionGoal.js');
let AutoDockingActionResult = require('./AutoDockingActionResult.js');
let AutoDockingFeedback = require('./AutoDockingFeedback.js');
let AutoDockingResult = require('./AutoDockingResult.js');

module.exports = {
  ScanAngle: ScanAngle,
  ControllerInfo: ControllerInfo,
  Led: Led,
  DigitalInputEvent: DigitalInputEvent,
  MotorPower: MotorPower,
  RobotStateEvent: RobotStateEvent,
  ButtonEvent: ButtonEvent,
  ExternalPower: ExternalPower,
  Sound: Sound,
  VersionInfo: VersionInfo,
  DockInfraRed: DockInfraRed,
  DigitalOutput: DigitalOutput,
  WheelDropEvent: WheelDropEvent,
  KeyboardInput: KeyboardInput,
  BumperEvent: BumperEvent,
  SensorState: SensorState,
  CliffEvent: CliffEvent,
  PowerSystemEvent: PowerSystemEvent,
  AutoDockingGoal: AutoDockingGoal,
  AutoDockingActionFeedback: AutoDockingActionFeedback,
  AutoDockingAction: AutoDockingAction,
  AutoDockingActionGoal: AutoDockingActionGoal,
  AutoDockingActionResult: AutoDockingActionResult,
  AutoDockingFeedback: AutoDockingFeedback,
  AutoDockingResult: AutoDockingResult,
};

// SPDX-License-Ientifier: MIT
pragma solidity ^0.8.18;

import {TimeLockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimeLockController {
    constructor(
        uint256 minDelay,
        address[] memory proposers,
        address[] memory executors
    ) TimeLockController(minDelay, proposers, executors, msg.sender) {}
}

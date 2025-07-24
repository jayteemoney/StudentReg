
// SPDX-License-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {StudentReg} from "../src/StudentReg.sol";

contract StudentRegScript is Script {
    StudentReg public studentReg;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        studentReg = new StudentReg(
            "John Doe", // Initial name
            20          // Initial age
        );

        vm.stopBroadcast();

        console.log("StudentReg deployed to:", address(studentReg));
    }
}

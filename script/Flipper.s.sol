// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {Script, console} from "forge-std/Script.sol";
import {Flipper} from "../src/Flipper.sol";

contract Deploy is Script {
    Flipper public flipper;

    function run() public {
        vm.startBroadcast();

        flipper = new Flipper(false);

        console.log("Flipper address: ", address(flipper));
        vm.stopBroadcast();
    }
}

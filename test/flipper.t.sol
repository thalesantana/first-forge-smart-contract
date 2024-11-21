// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {Test, console} from "forge-std/Test.sol";
import {Flipper} from "../src/Flipper.sol";

contract CounterTest is Test {
    Flipper public flipper;

    function setUp() public {
        flipper = new Flipper(false);
    }
    function testFlip() public view {
        assertEq(flipper.getState(), false);
    }

}

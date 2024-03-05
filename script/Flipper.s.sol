// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console2} from "forge-std/Script.sol";
import{Flipper} from "../src/Flipper.sol";

contract FlipperScript is Script {
    Flipper flipper;
    
    function setUp() public {}

    function run() public {
        vm.startBroadcast(0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80);
        flipper = new Flipper();
        console2.log("ADDRESS: ", address(flipper));
        console2.log(flipper.getValue());
        flipper.flip();
        console2.log(flipper.getValue());
        vm.stopBroadcast();
    }
}

